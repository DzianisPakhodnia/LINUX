#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include <sys/types.h>
#include <sys/wait.h>

int score = 0;  // Общий счет игры

// Обработчик сигнала для игрока 1 (прибавить случайное число)
void player1_handler(int signum) {
    int rand_num = rand() % 100 + 1;  // Случайное число от 1 до 100
    score += rand_num;
    printf("Игрок 1 добавил %d. Текущий счет: %d\n", rand_num, score);
}

// Обработчик сигнала для игрока 2 (вычесть случайное число)
void player2_handler(int signum) {
    int rand_num = rand() % 100 + 1;  // Случайное число от 1 до 100
    score -= rand_num;
    printf("Игрок 2 вычел %d. Текущий счет: %d\n", rand_num, score);
}

int main() {
    srand(time(NULL));  // Инициализация генератора случайных чисел

    // Устанавливаем обработчики сигналов
    signal(SIGUSR1, player1_handler);  // Обработчик для первого игрока
    signal(SIGUSR2, player2_handler);  // Обработчик для второго игрока

    // Симуляция игры
    for (int round = 0; round < 10; round++) {
        printf("\nРаунд %d\n", round + 1);

        // Игрок 1 ходит
        sleep(1);  // Задержка для симуляции хода
        kill(getpid(), SIGUSR1);  // Отправить сигнал первому игроку

        // Игрок 2 ходит
        sleep(1);  // Задержка для симуляции хода
        kill(getpid(), SIGUSR2);  // Отправить сигнал второму игроку
    }

    // В конце игры выводим результат
    if (score > 0) {
        printf("\nИгрок 1 победил с результатом: %d\n", score);
    } else {
        printf("\nИгрок 2 победил с результатом: %d\n", score);
    }

    return 0;
}

