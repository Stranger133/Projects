#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
                            //Exercice 3-A
int main(int argc, char **argv)
{
	if(argc < 2 || argc > 2){
	    printf("Donner un seul fichier comme argument!\n");
	    exit(1);
	}
	int fd = open(argv[1], O_RDONLY);
	struct stat* sfile;
    if(fd != -1){
        if(fstat(fd, sfile) != -1){
            if(S_ISREG(sfile->st_mode)){
                
                    int size = (int)(sfile->st_size) / sizeof(char);
                    char* buf = malloc(sizeof(char));
                    //printf("size = %d\n", size);
                    if(read(fd, buf, size)!=-1){
                        write(0, buf, size);
                        free(buf);
                        //fflush(stdout);
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
    close(fd);
}
