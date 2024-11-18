#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <string.h>
#include <time.h>

#define SHM_NAME "/my_shared_memory2"
#define BUFFER_SIZE 256

int main() {
    int shm_fd;
    char *ptr;

    // Создаем разделяемую память
    shm_fd = shm_open(SHM_NAME, O_CREAT | O_RDWR, 0666);
    ftruncate(shm_fd, BUFFER_SIZE);
    ptr = mmap(0, BUFFER_SIZE, PROT_WRITE, MAP_SHARED, shm_fd, 0);

    if (ptr == MAP_FAILED) {
        perror("mmap");
        exit(1);
    }

    // Постоянно обновляем данные в разделяемой памяти
    while (1) {
        time_t now = time(NULL);
        snprintf(ptr, BUFFER_SIZE, "Server 2: The time is %s", ctime(&now));
        sleep(2); // Обновляем данные каждые 2 секунды
    }

    munmap(ptr, BUFFER_SIZE);
    shm_unlink(SHM_NAME);
    return 0;
}

