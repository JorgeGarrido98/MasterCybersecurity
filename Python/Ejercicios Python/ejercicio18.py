''' Crea un programa que cuente la cantidad de palabras en una oración ingresada por
el usuario. '''
def contPalabras():
  # Ingresar oración
  oracion = input("Ingrese una oración: ")
  # Contar palabras
  palabras = oracion.split()
  # Mostrar resultado
  print("La oración tiene", len(palabras), "palabras.")

contPalabras()