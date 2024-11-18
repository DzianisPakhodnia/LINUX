#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <string.h>

#define FILE_PATH1 "mapped_file1"
#define FILE_PATH2 "mapped_file2"
#define BUFFER_SIZE 256

void read_from_server(const char *file_path) {
    int fd;
    char *ptr;

    fd = open(file_path, O_RDONLY);
    if (fd == -1) {
        perror("open");
        return;
    }

    ptr = mmap(0, BUFFER_SIZE, PROT_READ, MAP_SHARED, fd, 0);
    if (ptr == MAP_FAILED) {
        perror("mmap");
        close(fd);
        return;
    }

    printf("Received from %s: %s\n", file_path, ptr);

    munmap(ptr, BUFFER_SIZE);
    close(fd);
}

int main() {
    while (1) {
        read_from_server(FILE_PATH1);
        read_from_server(FILE_PATH2);
        sleep(2); // Читаем данные каждые 2 секунды
    }
    return 0;
}

