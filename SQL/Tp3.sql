UPDATE CLIENT  SET  CAT ='C1' WHERE   NOMC= 'Mercier';

UPDATE CLIENT  SET  CAT ='C2' WHERE   NOMC= 'Neuman';
--1
SELECT RefC, NomC,SUM(Quantite) AS Quantite Clous
FROM CLIENT NJ  COMMANDE NJ  DETAIL NJ  PRODUIT
GROUP BY RefC

HAVING SUM(Quantite)>50;

--3

SELECT RefP,SUM(Quantite)
FROM PRODUIT NJ DETAIL



--4

SELECT Nom C

FROM CLIENT NJ COMMANDE NJ DETAIL
WHERE RefP IN ("CL45","CL60")
GROUP BY RefC
HAVING COUNT(DISTING RefP)=1;

--5

SELECT NomC
FROM CLIENT NJ COMMANDE NJ DETAIL 
WHERE RefP IN ("CL45","CL60","CL464")
GROUP BY RefC
HAVING COUNT(DISTINCT RefP)=2;