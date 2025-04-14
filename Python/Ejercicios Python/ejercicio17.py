''' Escribe un programa que convierta una distancia en millas a kilómetros. Sabiendo
que 1 milla equivale a 1.60934 kilómetros. '''
def convMillasKm():
  # Pedir al usuario la distancia en millas
  millas = float(input("Ingrese la distancia en millas: "))
  # Convertir millas a kilómetros
  kilometros = millas * 1.60934
  # Mostrar el resultado
  print(f"{millas} millas son {kilometros:.2f} kilómetros")

convMillasKm()