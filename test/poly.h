#include <stdio.h>
#include <stdlib.h>
#ifndef DEF_H
#define DEF_H

struct Monome
{
    unsigned int degre;
    float coef;
    struct Monome *suivant;
};

typedef struct Monome monome;

monome *creerMonome(float coef, unsigned int degree);
void afficherPoly(monome *p);
void supprimerPoly(monome *p);
float evaluerPoly(monome *p, float x);
monome *deriverPoly(monome *p);
#endif