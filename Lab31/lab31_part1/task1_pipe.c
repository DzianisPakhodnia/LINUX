#include <stdio.h>
#include <unistd.h>
#include <time.h>

int main() {
    int fd[2];
    time_t t;
    char buffer[100];
    
    // Создаем неименованный канал
    if (pipe(fd) == -1) {
        perror("pipe");
        return 1;
    }

    // Создаем дочерний процесс
    if (fork() == 0) { // Дочерний процесс
        close(fd[0]); // Закрываем конец для чтения
        t = time(NULL);
        sprintf(buffer, "Системная дата и время: %s", ctime(&t));
        write(fd[1], buffer, sizeof(buffer)); // Записываем в канал
        close(fd[1]);
    } else { // Родительский процесс
        close(fd[1]); // Закрываем конец для записи
        read(fd[0], buffer, sizeof(buffer)); // Читаем из канала
        printf("%s", buffer); // Выводим данные
        close(fd[0]);
    }

    return 0;
}

