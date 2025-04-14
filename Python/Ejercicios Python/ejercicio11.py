''' Escribe un programa que solicite al usuario su año de nacimiento y calcule su edad
actual. '''
def edad():
  año_nacimiento = int(input("Ingrese su año de nacimiento: "))
  año_actual = 2025
  edad = año_actual - año_nacimiento
  return edad

print("Su edad es: ", edad())