''' Crea un programa que calcule el área de un rectángulo. El usuario debe ingresar la
longitud y el ancho del rectángulo. '''
def areaRectangulo():
  longitud = float(input("Ingrese la longitud del rectángulo: "))
  ancho = float(input("Ingrese el ancho del rectángulo: "))
  area = longitud * ancho
  print(f"El área del rectángulo es: {area}")

areaRectangulo()