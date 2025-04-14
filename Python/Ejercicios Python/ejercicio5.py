# Escribe un programa que calcule la suma de todos los números pares del 1 al 100.
def sumaNumPares():
  suma = 0
  for i in range(1, 101):
    if i % 2 == 0:
      suma += i
  return suma

print(sumaNumPares())