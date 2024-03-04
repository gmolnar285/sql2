/* Készítsen tárolt eljárást SPUgyfelFoglalasok, amely a 
paraméterként megkapott ügyfél azonosítóhoz tartozó foglalások 
adatait listázza! 
a. Teszteljük a tárolt eljárás működését, 
pl: EXEC SPUgyfelFoglalasok 'laszlo2'
*/
CREATE OR ALTER PROC SPUgyfelfoglalasok
(
 @ugyfel nvarchar(20) 
)
AS
BEGIN
  SELECT *
  FROM Foglalas
  WHERE ugyfel_fk = @ugyfel
END

EXEC SPUgyfelfoglalasok 'laszlo2'