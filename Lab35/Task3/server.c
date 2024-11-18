#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>
#include <string.h>
#include <time.h>
#include <semaphore.h>

#define FILE_PATH "mapped_file"
#define FILE_SIZE 4096
#define SEM_NAME "/file_semaphore"

typedef struct {
    int client_id;
    char data[256];
    time_t timestamp;
} message_t;

int main() {
    int fd = open(FILE_PATH, O_CREAT | O_RDWR, 0666);
    if (fd == -1) {
        perror("Error opening file");
        return 1;
    }

    if (ftruncate(fd, FILE_SIZE) == -1) {
        perror("Error setting file size");
        close(fd);
        return 1;
    }

    void *map = mmap(NULL, FILE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (map == MAP_FAILED) {
        perror("Error mapping file");
        close(fd);
        return 1;
    }

    sem_t *sem = sem_open(SEM_NAME, O_CREAT, 0644, 1);
    if (sem == SEM_FAILED) {
        perror("Error opening semaphore");
        munmap(map, FILE_SIZE);
        close(fd);
        return 1;
    }

    message_t *msg = (message_t *)map;

    while (1) {
        sem_wait(sem); // Захват семафора
        char time_str[26];
        ctime_r(&msg->timestamp, time_str);
        time_str[strlen(time_str) - 1] = '\0'; // Удаляем символ новой строки
        printf("Server: Client %d sent message: %s at %s\n", msg->client_id, msg->data, time_str);
        sem_post(sem); // Освобождение семафора
        sleep(1); // Задержка между попытками чтения данных
    }

    sem_close(sem);
    sem_unlink(SEM_NAME);
    munmap(map, FILE_SIZE);
    close(fd);

    return 0;
}

