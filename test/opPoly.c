#include <stdio.h>
#include <stdlib.h>
#include "poly.h"

float puissance(float x, int y)
{
    if (y == 1)
    {
        return x;
    }
    else
    {
        return x * puissance(x, y - 1);
    }
}

float evaluerPoly(monome *p, float x)
{
    if (p == NULL)
    {
        return 0.;
    }
    else
    {
        return (p->coef * puissance(x, p->degre)) + evaluerPoly(p->suivant, x);
    }
}

monome *deriverPoly(monome *p)
{

    monome *pointeur = p;
    while ((p->degre) > 1)
    {
        p->coef = p->coef * p->degre;
        p->degre--;
        if (p->suivant == NULL)
        {
            return pointeur;
        }
        p = p->suivant;
    }

    supprimerPoly(p);
    return pointeur;
}