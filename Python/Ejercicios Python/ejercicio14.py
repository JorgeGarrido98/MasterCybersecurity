''' Crea un programa que calcule el precio final de un artículo después de aplicar un
descuento del 20%. '''
def calcDescuento():
  precio = float(input("Ingrese el precio del artículo: €"))
  descuento = precio * 0.20
  precioFinal = precio - descuento
  print(f"Precio final: {precioFinal:.2f}€")

calcDescuento()