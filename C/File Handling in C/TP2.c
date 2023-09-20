#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
                            //Exercice 2-1

void main(int argc, char **argv)
{
	if(open("file.txt", O_CREAT | O_EXCL, O_RDONLY) != -1){
	    printf("File created!\n");
	}
	else{
	    perror("Error: ");
	}
}
                            //Exercice 2-2

L'erreur retournee est: File exists


                            //Exercice 2-3
                            
si vous specifier 755 comme argument mode dans la fonction open(), le fichier créer aura les permissions suivantes: 
                    propriétaire: rwxr
                    groupe: xr
                    autres: x
Mais les permissions finales du fichier depend de la valeur d'umask'.
Par exemple si la valeur d'umask est 022 après la création dut ficher, les permissions finales seraient: 
                  proprietaire: rw
                  groupe: r
                  autres: r.
donc le fichier cera créé avec les permissions spécifie dans le paramètre, sauf si la valeur d'umask est configuré pour masker certaine permission(s).

