#include <stdio.h>
#include <unistd.h>
#include <string.h>

int main() {
    int fd[2];
    char message[] = "Привет от одного брата другому!";
    char buffer[100];

    // Создаем неименованный канал
    if (pipe(fd) == -1) {
        perror("pipe");
        return 1;
    }

    // Создаем два дочерних процесса
    if (fork() == 0) { // Первый дочерний процесс
        close(fd[0]); // Закрываем конец для чтения
        write(fd[1], message, strlen(message) + 1); // Записываем сообщение
        close(fd[1]);
    } else if (fork() == 0) { // Второй дочерний процесс
        close(fd[1]); // Закрываем конец для записи
        read(fd[0], buffer, sizeof(buffer)); // Читаем сообщение
        printf("Сообщение от брата: %s\n", buffer);
        close(fd[0]);
    } else {
        close(fd[0]);
        close(fd[1]);
    }

    return 0;
}

