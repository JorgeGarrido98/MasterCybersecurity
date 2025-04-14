''' Crea un programa que realice operaciones aritméticas simples (suma, resta,
multiplicación, división) según la elección del usuario. '''
operacion = input("¿Qué operación deseas realizar? (suma, resta, multiplicación, división)")
if operacion != "suma" and operacion != "resta" and operacion != "multiplicación" and operacion != "división":
  print("Operación no reconocida. Intenta con: suma, resta, multiplicación o división.")
else:
  num1 = float(input("Introduce el primer número: "))
  num2 = float(input("Introduce el segundo número: "))
if operacion == 'suma':
    print('La suma de los dos números es:', num1 + num2)
elif operacion == 'resta':
    print('La resta de los dos números es:', num1 - num2)
elif operacion == 'multiplicación':
    print('La multiplicación de los dos números es:', num1 * num2)
elif operacion == 'división':
    if num2 != 0:
        print('La división de los dos números es:', num1 / num2)
    else:
        print("Error: No se puede dividir entre cero.")