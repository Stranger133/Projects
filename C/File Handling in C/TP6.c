#include <stdint.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
                            //Exercice 6

typedef struct fiche{
    char nom[20];
    char prenom[20];
    int age;
}fiche;
char * get_filename(){
    char* name = malloc(50);
    printf("File Name: ");
    scanf("%s", name);
    return name;
}
void check_argc(int argc, int n){
    if(argc-1 != n){
        fprintf(stderr, "Expected %d arguments got %d.", n, argc-1);
        exit(1);
    }
}

fiche* create_fiche(){
    fiche* f = (fiche*)malloc(sizeof(fiche));
    printf("Nom: ");
    scanf("%s",f->nom);
    printf("Prenom: ");
    scanf("%s",f->prenom);
    printf("Age: ");
    scanf("%d",&f->age);
    return f;
}

int create_file(){
    char* name = get_filename();
    int fd = open(name, O_CREAT | O_EXCL | O_WRONLY, O_RDWR);
    if(fd != -1){
        fiche* buf = create_fiche();
        int w = write(fd, buf, sizeof(fiche));
        printf("fd = %d\n", fd);
        if (w != -1) {
            printf("Success du Creation du fichier.\n");
        }
        else {
            perror("Error in write: ");
        }
    }
    else{
        perror("Error in create: ");
    }
    return fd;
}

void search_fiche(int fd){
    fiche* f = (fiche*)malloc(sizeof(fiche));
    int s = lseek(fd, 0, SEEK_END);
    int cur = 0;
    int i=0;
    if (s != -1) {
        while(cur != s){
            lseek(fd, cur, SEEK_SET);
            int r = read(fd, f, sizeof(fiche));
            if(r != -1){
                printf("Fiche %d:\n\tNom: %s\n\tPrenom: %s\n\tAge: %d\n", i, f->nom, f->prenom, f->age);
            }
            else {
                perror("Error in read: ");
            }
            cur += sizeof(fiche);
            i++;
        }
        printf("Ce fichier contient %d fiches.\n", i);
    }
    else {
        perror("Error in lseek: ");
    }
}

void read_file(){
    char* name = get_filename();
    int fd = open(name, O_RDWR);
    if (fd != -1) {
        search_fiche(fd);
    }
    else {
        perror("Error in open: ");
    }
}

int add_fiche(){
    char* name = get_filename();
    int fd = open(name, O_RDWR | O_APPEND);
    if(fd != -1){
        fiche* buf = create_fiche();
        int w = write(fd, buf, sizeof(fiche));
        if (w != -1) {
            printf("Fiche ajouter au fichier %s.\n", name);
        }
        else {
            perror("Error in write: ");
        }
    }
    else{
        perror("Error in create: ");
    }
    return fd;
}

void find_fiche(){
    char* name = get_filename();
    int fd = open(name, O_RDWR);
    if (fd != -1) {
        fiche* f1 = (fiche*)malloc(sizeof(fiche));
        fiche* f2 = (fiche*)malloc(sizeof(fiche));
        f2 = create_fiche();
        int s = lseek(fd, 0, SEEK_END);
            int cur = 0;
            int i=0;
            if (s != -1) {
                while(cur != s){
                    lseek(fd, cur, SEEK_SET);
                    int r = read(fd, f1, sizeof(fiche));
                    if(r != -1){
                        if ((strcmp(f1->nom, f2->nom)==0) && (strcmp(f1->prenom, f2->prenom)==0) && (f1->age == f2->age)) {
                            printf("Cette fiche deja exist!\n");
                            printf("Fiche %d:\n\tNom: %s\n\tPrenom: %s\n\tAge: %d\n", i, f1->nom, f1->prenom, f1->age);
                            exit(0);
                        }
                    }
                    else {
                        perror("Error in read: ");
                    }
                    cur += sizeof(fiche);
                    i++;
                }
                printf("Cette fiche n'existe pas dans ce fichier!\n");
            }
            else {
                perror("Error in lseek: ");
            }
    }
    else {
        perror("Error in open: ");
    }
}

int main(int argc, char** argv)
{
    printf("---------------------------------\n");
    printf("|\t1) Creer un fichier.\t|\n");
    printf("|\t2) Lire un fichier.\t|\n");
    printf("|\t3) Ajouter une fiche.\t|\n");
    printf("|\t4) Rechercher une fiche.|\n");
    printf("|\t0) Sortir.\t\t|\n");
    printf("---------------------------------\n");
    int n;
    scanf("%d", &n);
    switch (n) {
        case 0: exit(0);
        case 1: create_file();
                break;
        case 2: read_file();
                break;
        case 3: add_fiche();
                break;
        case 4: find_fiche();
                break;
        default: fprintf(stderr, "Invalid Number!\n");
                 break;

    }
	return 0;
}
