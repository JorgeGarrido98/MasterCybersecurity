''' Crea un programa que cuente y muestre la cantidad de números pares e impares en
una lista ingresada por el usuario. '''
def contadorParesImpares():
  # Ingresar lista de números
  numeros = input("Ingrese una lista de números separados por espacio: ")
  # Convertir la lista a una lista de enteros
  numeros = [int(x) for x in numeros.split()]
  # Inicializar contadores
  par = 0
  imp = 0
  # Recorrer la lista y contar números pares e impares
  for i in numeros:
    if i % 2 == 0:
      par += 1
    else:
      imp += 1
      # Mostrar la cantidad de números pares e impares
  print(f"La cantidad de números pares es: {par}")
  print(f"La cantidad de números impares es: {imp}")
  return par, imp

print(contadorParesImpares())