#include <stdio.h>
#include <stdlib.h>


struct scell{
   int value;
   struct scell* next;
};

typedef  struct scell cell;

typedef cell* liste;

int get_value(cell* c){
    return c->value;
}

void set_value(cell* c,int v){
    c->value=v;
}

void set_next (cell* c,cell* c1){
     c->next=c1;
}

cell* new_cell(int v){
   cell* c = (cell*)(malloc(sizeof(cell*)));
   set_value(c,v);
}

void ajouter_en_tete(liste* l,int v){
     cell* c = new_cell(v);
     set_next (c,*l);
     *l=c;
}

int retirer_tet(list* l){
    int temp=get_value(*l);
    
}

int main(){
    cell c_vide = {42,NULL};
    cell c = {-12,&c_vide};
    liste l_vide=NULL;
    cell lc={43,NULL};
    cell lb={-92,&lc};
    cell la={5,&lb};
    liste u=&la;
    return 0;
}


