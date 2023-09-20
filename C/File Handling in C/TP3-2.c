#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
                            //Exercice 3-B
int main(int argc, char **argv)
{
	if(argc != 3){
	    printf("Expected 2 arguments got %d.\n", argc-1);
	    exit(1);
	}
	int fd1 = open(argv[1], O_RDONLY);
	int fd2 = open(argv[2], O_CREAT | O_RDWR, 0755);
	struct stat* sfile;
    if(fd1 != -1 && fd2 != -1){
        if(fstat(fd1, sfile) != -1){
            if(S_ISREG(sfile->st_mode)){
                    int size = (int)(sfile->st_size) / sizeof(char);
                    char* buf = malloc(sizeof(char));
                    //printf("size = %d\n", size);
                    if(read(fd1, buf, size)!=-1){
                        write(fd2, buf, size);
                        free(buf);
                    }
                    else{
                        perror("Error in read: ");
                    }
            }
            else{
                printf("Le fichier n'est pas regulier!");
            }
        }
        else{
            perror("Error in fstat: ");
        }
    }
    else{
        perror("Error in open: ");
    }
    close(fd1);
    close(fd2);
}

