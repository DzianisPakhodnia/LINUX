#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>
#include <string.h>
#include <time.h>

#define FILE_PATH "mapped_file"
#define FILE_SIZE 4096

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

    message_t *msg = (message_t *)map;

    struct flock lock;
    memset(&lock, 0, sizeof(lock));
    lock.l_type = F_RDLCK;

    while (1) {
        fcntl(fd, F_SETLKW, &lock); // Установить блокировку на чтение
        char time_str[26];
        ctime_r(&msg->timestamp, time_str);
        time_str[strlen(time_str) - 1] = '\0'; // Удаляем символ новой строки
        printf("Server: Client %d sent message: %s at %s\n", msg->client_id, msg->data, time_str);
        lock.l_type = F_UNLCK;
        fcntl(fd, F_SETLK, &lock); // Снять блокировку
        sleep(1); // Задержка между попытками чтения данных
    }

    if (munmap(map, FILE_SIZE) == -1) {
        perror("Error unmapping file");
        return 1;
    }

    close(fd);
    return 0;
}

