# Escribe un programa que calcule el Índice de Masa Corporal (IMC) de una persona.
def calcular_imc():
  print("Calculadora de Índice de Masa Corporal (IMC)")

  peso = float(input("Introduce tu peso en kilogramos (kg): "))
  altura = float(input("Introduce tu altura en metros (m): "))

  imc = peso / (altura ** 2)
  print(f"Tu IMC es: {imc}")

  if imc < 18.5:
      print("Clasificación: Bajo peso")
  elif 18.5 <= imc < 25:
      print("Clasificación: Peso normal")
  elif 25 <= imc < 30:
      print("Clasificación: Sobrepeso")
  elif 30 <= imc < 35:
      print("Clasificación: Obesidad grado I")
  elif 35 <= imc < 40:
      print("Clasificación: Obesidad grado II")
  else:
      print("Clasificación: Obesidad grado III")

calcular_imc()