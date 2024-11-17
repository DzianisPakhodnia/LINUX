#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/ipc.h>
#include <sys/shm.h>

float *balance;  // Указатель на общую память для баланса

// Обработчик сигнала для клиента (запросить текущую сумму)
void client_handler(int signum) {
    printf("Запрос от клиента: Текущая сумма на счете: %.2f\n", *balance);
}

// Обработчик сигнала для банка (увеличить сумму на 10%)
void bank_handler(int signum) {
    *balance += 0.1 * (*balance);  // Увеличиваем сумму на 10%
    printf("Банк увеличил сумму на 10%%: %.2f\n", *balance);
}

int main() {
    srand(time(NULL));  // Инициализация генератора случайных чисел

    // Создание общей памяти для хранения баланса
    key_t key = ftok("bank", 65);  // Генерация ключа
    int shmid = shmget(key, sizeof(float), 0666 | IPC_CREAT);  // Получение или создание сегмента общей памяти
    balance = (float *)shmat(shmid, NULL, 0);  // Присоединение общей памяти

    *balance = 1000.0;  // Начальная сумма на счете

    // Устанавливаем обработчики сигналов
    signal(SIGUSR1, client_handler);  // Обработчик для клиента
    signal(SIGUSR2, bank_handler);    // Обработчик для банка

    pid_t pid = fork();  // Создаем второй процесс

    if (pid == 0) {
        // Процесс банка (увеличивает сумму на счете)
        for (int i = 0; i < 5; i++) {
            sleep(3);  // Банк обновляет сумму каждые 3 секунды
            kill(getppid(), SIGUSR2);  // Отправить сигнал банку для увеличения суммы
        }
        exit(0);  // Завершаем работу банка
    } else {
        // Процесс клиента (запрашивает сумму)
        for (int i = 0; i < 5; i++) {
            sleep(2);  // Клиент запрашивает сумму каждые 2 секунды
            kill(pid, SIGUSR1);  // Отправить сигнал клиенту для получения суммы
        }

        wait(NULL);  // Ожидаем завершения процесса банка

        printf("\nКонец игры. Окончательная сумма на счете: %.2f\n", *balance);

        // Отсоединяем и удаляем сегмент общей памяти
        shmdt(balance);
        shmctl(shmid, IPC_RMID, NULL);
    }

    return 0;
}

