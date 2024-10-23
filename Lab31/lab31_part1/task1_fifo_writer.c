#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <time.h>

int main() {
    int fd;
    char buffer[100];
    time_t t = time(NULL);
    
    // Открываем именованный канал для записи
    fd = open("myfifo", O_WRONLY);
    if (fd == -1) {
        perror("open");
        return 1;
    }
    
    sprintf(buffer, "Системная дата и время: %s", ctime(&t));
    write(fd, buffer, sizeof(buffer));
    
    close(fd);
    return 0;
}

