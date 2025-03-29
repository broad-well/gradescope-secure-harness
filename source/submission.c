#include <stdio.h>
#include <sys/unistd.h>
#include <sys/wait.h>

int main() {
    printf("Hello from student submission\n");
    if (fork() == 0) {
        execlp("whoami", "whoami", NULL);
    } else { wait(NULL); }
    if (fork() == 0) {
        execlp("pwd", "pwd", NULL);
    } else { wait(NULL); }
    chdir("..");
    if (fork() == 0) {
        execlp("ls", "ls", NULL);
    } else { wait(NULL); }
    printf("Done!\n");
    return 0;
}