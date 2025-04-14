# Escribe un programa que determine si un número ingresado por el usuario es primo o no
def verifNumPrimo():
  num = int(input("Ingrese un número: "))
  if num > 1:
    for i in range(2, num):
      if (num % i) == 0:
        print(f"El número {num} no es primo")
        break
    else:
      print(f"El número {num} es primo")
  else:
    print(f"El número {num} no es primo (debe ser mayor que 1)")

verifNumPrimo()