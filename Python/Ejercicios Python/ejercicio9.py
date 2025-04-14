''' Crea un programa que convierta una cantidad de dólares a euros. Suponiendo que
1 dólar es igual a 0.85 euros. '''
def conversorDolEur():
  cantidadDolares = float(input("Ingrese la cantidad de dólares a convertir:"))
  cantidadEuros = cantidadDolares * 0.85
  print(f"{cantidadDolares} dólares son {cantidadEuros} euros")

conversorDolEur()