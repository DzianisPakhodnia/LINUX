#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <string.h>
#include <time.h>

#define FILE_PATH "mapped_file2"
#define BUFFER_SIZE 256

int main() {
    int fd;
    char *ptr;

    // Создаем и открываем файл
    fd = open(FILE_PATH, O_CREAT | O_RDWR, 0666);
    ftruncate(fd, BUFFER_SIZE);
    ptr = mmap(0, BUFFER_SIZE, PROT_WRITE | PROT_READ, MAP_SHARED, fd, 0);

    if (ptr == MAP_FAILED) {
        perror("mmap");
        exit(1);
    }

    // Постоянно обновляем данные в маппированном файле
    while (1) {
        time_t now = time(NULL);
        snprintf(ptr, BUFFER_SIZE, "Server 2: The time is %s", ctime(&now));
        sleep(2); // Обновляем данные каждые 2 секунды
    }

    munmap(ptr, BUFFER_SIZE);
    close(fd);
    unlink(FILE_PATH);
    return 0;
}

