''' Escribe un programa que convierta un número de minutos en horas y minutos. Por
ejemplo, 145 minutos serían 2 horas y 25 minutos. '''
def convTiempo():
  minutos = int(input("Ingrese el número de minutos: "))
  horas = minutos / 60
  minutos = minutos % 60
  print(f"El tiempo es {int(horas)} horas y {minutos} minutos")

convTiempo()