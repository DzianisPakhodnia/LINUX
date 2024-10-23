#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/utsname.h>
#include <time.h>

int main() {
    int fd;
    struct utsname sysinfo;
    char buffer[200];
    time_t t = time(NULL);
    
    uname(&sysinfo); // Получаем информацию о системе
    
    // Открываем именованный канал для записи
    fd = open("sysfifo", O_WRONLY);
    if (fd == -1) {
        perror("open");
        return 1;
    }
    
    sprintf(buffer, "Имя ядра: %s\nВерсия ядра: %s\nСистемная дата и время: %s", sysinfo.sysname, sysinfo.version, ctime(&t));
    write(fd, buffer, sizeof(buffer));
    
    close(fd);
    return 0;
}

