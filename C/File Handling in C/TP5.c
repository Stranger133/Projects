#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
                               //Exercice 5-a
/*                               
void main(int argc, char **argv)
{
    //open("fichier", O_CREAT | O_RDWR, 0755);
	if(creat("fichier",0755)!=-1){
	    int fd = open("fichier", O_RDWR);
	    if(fd != -1){
	        int cur = lseek(fd, 10000, SEEK_SET);
	        if(cur != -1){
	            printf("Current Cursor Position: %d\n", cur);
	            exit(0);
	        }
	        else{
	            perror("Error in lseek: ");
	        }
	    }
	    else{
	        perror("Error in open: ");
	    }
	}
	else{
	    perror("Error in creat: ");
	}
}

                                //Exercice 5-b
                                
la taille du fichier n'a pas d'importance.
La taille du fichier verifie a l'aide de la commande ls -l, qui affiche la taille du fichier en octets. 
Les blocs correspondant au trou de caractères 9999 ne seront alloués que s'ils sont utilisés. (remplie)*/


                                //Exercice 5-c
/*                       
void main(int argc, char **argv)
{
    if(argc != 2){
        printf("Expected 1 argument got %d", argc-1);
        exit(1);
    }
    int n;
    printf("Combien de fois voulez-vous modifier?\n");
    scanf("%d",&n);
    char* str;
    for(int i=0; i<n;i++){
        printf("Donner votre text: \n");
        scanf("%s",str);
        int fd = open(argv[1], O_RDWR | O_APPEND);
            if(fd != -1){
                int w = write(fd, str, strlen(str));
                if( w != -1){
                    int cur = lseek(fd, 0, SEEK_CUR);
                    if(cur != -1){
                        printf("Current Cursor Position: %d\n", cur);
                    }
                    else{
                        perror("Error in lseek: ");
                    }
                }
                else{
                    perror("Error in write: ");
                }
            }
            else{
                perror("Error in open: ");
            }
    }
}  */                           
    
    
                                //Exercice 5-d
                       
void main(int argc, char** argv){
    
    if(argc != 2){
        printf("Expected 1 argument got %d", argc-1);
        exit(1);
    }
    char* str = malloc(100);
    int fd1 = open(argv[1], O_RDWR | O_APPEND);
    int fd2 = open(argv[1], O_RDWR);
    if(fd1 == -1){ 
        perror("Error in open: ");
    }
    if(fd2 == -1){
        perror("Error in open 2: ");
    }
    int cur = lseek(fd1,0, SEEK_END);
    if(cur == -1){
        perror("Error in lseek 1: ");
    }
    printf("Offset courant avant modification: %d\n", cur);
    
    //Modification odification utilisant le premier descripteur fd1.
    printf("Donner votre text: \n");
    scanf("%s",str);
    int w = write(fd1, str, strlen(str));
    if(w!=-1){
        cur = lseek(fd2, 0, SEEK_END);
        if(cur == -1){
            perror("Error in lseek2: ");
        }
        printf("Offset courant apres modification : %d\n", cur);
    }
    else{
        perror("Error in write: ");
    }
}              
                                
//L'affirmation a ete confirme. En utilisant 2 different descripteur pour acceder a un fichier commun, l’offset du fichier via le descripteur "fd1" est visible via l’autre descripteur "fd2".                                 
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                


