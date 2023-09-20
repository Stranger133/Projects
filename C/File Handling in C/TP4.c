#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
                            //Exercice 4-A
void main(int argc, char **argv)
{   
    int fd = open("fichier_erreur", O_RDWR);
	    if(fd != -1){
	        if(dup2(fd, 2) != -1){
	            fprintf(stderr,"no error has occured!");
	        }
            else{
                perror("Erreur in dup2: ");
            }
        }
	    else{
	        perror("Erreur in open: ");
	    }
}
                            //Exercice 4-B
                            
void main(int argc, char **argv)
{   
    int fd = open("fichier_output", O_RDWR);
	if(fd != -1){
	    if(dup2(fd, 1) != -1){
	        printf("Testing stdout!");
	    }
	    else{
	        perror("Erreur in dup2: ");
	    }
	}
	else{
	    perror("Erreur in open: ");
	}
}
