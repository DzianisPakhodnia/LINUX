#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main() {
    int fd;
    char buffer[200];

    // Открываем именованный канал для чтения
    fd = open("sysfifo", O_RDONLY);
    if (fd == -1) {
        perror("open");
        return 1;
    }

    read(fd, buffer, sizeof(buffer));
    printf("%s", buffer);
    
    close(fd);
    return 0;
}

