# Crea un programa que sume todos los números en una lista ingresada por el usuario.
def sumNumList():
  numList = input("Ingrese una lista de números separados por comas: ")
  numList = [int(x) for x in numList.split(",")]
  print("La suma de la lista es: ", sum(numList))

sumNumList()