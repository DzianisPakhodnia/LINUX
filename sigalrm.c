#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <time.h>

// Функция для вывода текущего времени
void print_current_time() {
    time_t now;
    struct tm *timeinfo;
    
    // Получение текущего времени
    time(&now);
    timeinfo = localtime(&now);

    // Вывод времени в формате ЧЧ:ММ:СС
    printf("Текущее время: %02d:%02d:%02d\n", 
           timeinfo->tm_hour, 
           timeinfo->tm_min, 
           timeinfo->tm_sec);
}

// Первый обработчик сигнала SIGALRM
void alarm_handler_one(int signum) {
    printf("Обработчик 1: Сигнал SIGALRM получен. Время истекло!\n");
    print_current_time();
}

// Второй обработчик сигнала SIGALRM
void alarm_handler_two(int signum) {
    printf("Обработчик 2: Сигнал SIGALRM получен. Время истекло!\n");
    print_current_time();
}

int main() {
    // Установка первого обработчика для SIGALRM
    signal(SIGALRM, alarm_handler_one);

    // Установка будильника (через 3 секунды вызовется первый обработчик)
    alarm(3);
    printf("Установлен обработчик 1. Ожидание сигнала...\n");
    pause(); // Ожидание сигнала

    // Установка второго обработчика для SIGALRM
    signal(SIGALRM, alarm_handler_two);

    // Установка будильника (через 5 секунд вызовется второй обработчик)
    alarm(5);
    printf("Установлен обработчик 2. Ожидание сигнала...\n");
    pause(); // Ожидание сигнала

    return 0;
}

