#include <stdio.h>
#include <stdlib.h>
#include "poly.h"

int main()
{
    monome *p;
    p = creerMonome(3, 2);
    afficherPoly(p);
    evaluerPoly(p, 3.);
    printf("Valeur evaluee : %f\n", evaluerPoly(p, 3.));
    deriverPoly(p);
    afficherPoly(p);
    return 0;
}