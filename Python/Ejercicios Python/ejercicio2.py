# Crea un programa que calcule el monto total a pagar en un restaurante, incluyendo una propina del 15% sobre el total de la cuenta.
def calcPropina(cuenta):
  totalPagar = cuenta + (cuenta * 0.15)
  return totalPagar

resultado = calcPropina(100)
print(f"El monto total a pagar es: ${resultado}")