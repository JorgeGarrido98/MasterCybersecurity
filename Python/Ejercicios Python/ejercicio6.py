''' Crea un programa que verifique si una palabra ingresada por el usuario es un
palíndromo (se lee igual de izquierda a derecha que de derecha a izquierda). '''

palabra = input("Ingrese una palabra: ")
palabra = palabra.lower()
palabra_al_reves = palabra[::-1]

if palabra == palabra_al_reves:
  print("La palabra es un palíndromo")
else:
  print("La palabra NO es un palíndromo")
