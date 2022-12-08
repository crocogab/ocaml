#include <stdio.h>
#include <stdlib.h>


int main(){
   int taille_tableau;
   printf("Donne moi le nombre de mois à considerer : ");
   scanf("%d",&taille_tableau);
   double *tableau;
   tableau=malloc(taille_tableau*sizeof(double));
   for (int i=0;i<taille_tableau;i++) {
       double temp;
       printf("Entrez la temperature du mois %d ",i+1);
       scanf("%lf",&temp);
       tableau[i]=temp;
   }
   
}
