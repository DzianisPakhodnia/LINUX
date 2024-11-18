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
    srand(time(NULL)); // Инициализация генератора случайных чисел

    int fd = open(FILE_PATH, O_RDWR);
    if (fd == -1) {
        perror("Error opening file");
        return 1;
    }

    void *map = mmap(NULL, FILE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (map == MAP_FAILED) {
        perror("Error mapping file");
        close(fd);
        return 1;
    }

    sem_t *sem = sem_open(SEM_NAME, 0);
    if (sem == SEM_FAILED) {
        perror("Error opening semaphore");
        munmap(map, FILE_SIZE);
        close(fd);
        return 1;
    }

    message_t *msg = (message_t *)map;
    int client_id = rand() % 1000; // Генерация уникального идентификатора клиента

    while (1) {
        sem_wait(sem); // Захват семафора
        msg->client_id = client_id;
        snprintf(msg->data, sizeof(msg->data), "Hello from client %d!", client_id);
        msg->timestamp = time(NULL); // Захват текущего времени
        printf("Client %d: Data written to file at %s", client_id, ctime(&msg->timestamp));
        sem_post(sem); // Освобождение семафора
        sleep(1); // Задержка между передачами данных
    }

    sem_close(sem);
    munmap(map, FILE_SIZE);
    close(fd);

    return 0;
}

