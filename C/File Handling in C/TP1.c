#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <time.h>

                                    // Exercice 1

int main(int argc, char*argv[]){
    struct stat* sfile;
    sfile = malloc(sizeof(struct stat));
    if(argc < 2){
        printf("Error: No arguments provided\n");
        exit(1);
    }
    for(int i=1; i<=argc-1;i++){
        if(stat(argv[i], sfile)!=-1){
            printf("Renseignement sur le fichier %s:\n", argv[i]);
            printf("\tNumero inode = %lu \n",sfile->st_ino);
            printf("\tTaille du fichier = %lu \n",sfile->st_size);
            printf("\tLes protection  = %s%s%s/%s%s%s/%s%s%s\n",(sfile->st_mode & S_IRUSR) ? "r":"-", (sfile->st_mode & S_IWUSR) ? "w":"-", (sfile->st_mode & S_IXUSR) ? "x":"-",(sfile->st_mode & S_IRGRP) ? "r":"-",(sfile->st_mode & S_IWGRP) ? "w":"-",(sfile->st_mode & S_IXGRP) ? "x":"-",(sfile->st_mode & S_IROTH) ? "r":"-",(sfile->st_mode & S_IWOTH) ? "w":"-", (sfile->st_mode & S_IXOTH) ? "x":"-");
            int fd = open(argv[i], O_RDONLY);
            if(fd == -1){
              perror("Error: ");
            }
            else{
              if(fstat(fd, sfile)<0){
                perror("Error: ");
              }
              else{
                printf("\tTaile du Block = %ld \n",sfile->st_blksize);
                printf("\tl'ID du Groupe = %ld \n", sfile->st_gid);
              }
            }
            close(fd);
            if (lstat(argv[i], sfile)==!-1) {
              printf("\tNombre des liens physique = %ld\n", sfile->st_nlink);
              printf("\tNombre de Block = %ld\n", sfile->st_blocks);
              printf("\tl'ID du Proprietaire = %ld\n", sfile->st_uid);
              printf("\tl'Heure du dernier acces = %s\n", ctime(&(sfile->st_atime)));
            }
            else{
              perror("Error: ");
            }
            
        }
        else{
            perror("Error: ");
        }
        printf("\n");
    }
    return 0;
}
