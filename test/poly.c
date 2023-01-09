#include <stdio.h>
#include <stdlib.h>
#include "poly.h"

monome *creerMonome(float coef, unsigned int degre)
{
  monome *p;
  p = (monome *)malloc(sizeof(monome));

  p->degre = degre;
  p->coef = coef;
  p->suivant = NULL;

  return p;
}

void supprimerPoly(monome *p)
{
  while (p != NULL)
  {
    monome *pointeur = p->suivant;
    free(p);
    p = pointeur;
  }
  /* free(p);*/
}

void afficherPoly(monome *p)
{
  printf("Polynome : ");
  while (p != NULL)
  {
    if (p->coef > 0)
    {
      printf("+%fX%d", p->coef, p->degre);
    }
    else
    {
      printf("-%fX%d", -(p->coef), p->degre);
    }
    p = p->suivant;
  }
  printf("\n");
}

monome *ajouterMonome(monome *p, float coef, unsigned int degre)
{
  monome *ptr, *pnew;

  if (p == NULL)
  {
    return creerMonome(coef, degre);
  }
  else
  {
    if (p->degre < degre)
    { // insertion `a gauche du polynˆome
      pnew = creerMonome(coef, degre);
      pnew->suivant = p;
      return pnew;
    }
    if (p->degre == degre)
    { // Monome de mˆeme degr´e existant
      p->coef += coef;
      return p;
    }
    ptr = p;
    while (ptr->suivant != NULL && ptr->suivant->degre > degre)
    {
      ptr = ptr->suivant;
    }
    if (ptr->suivant != NULL && ptr->suivant->degre == degre)
    {
      ptr->suivant->coef += coef;
    }
    else
    {
      pnew = creerMonome(coef, degre);
      pnew->suivant = ptr->suivant;
      ptr->suivant = pnew;
    }
    return p;
  }
}