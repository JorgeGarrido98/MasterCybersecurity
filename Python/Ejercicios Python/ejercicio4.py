# Crea un programa que cuente el número de vocales en una palabra ingresada por el usuario.
def contadorVocales(palabra):
  vocales = "aeiouAEIOU"
  contador = 0
  for letra in palabra:
    if letra in vocales:
      contador += 1
  return contador

palabra = input("Ingrese una palabra: ")
print('El número de vocales en la palabra es:', contadorVocales(palabra))