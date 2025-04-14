# Escribe un programa que determine si un año ingresado por el usuario es bisiesto o no.
def es_bisiesto():
  año = int(input("Ingrese un año: "))
  if año % 400 == 0:
    return True
  elif año % 100 == 0:
    return False
  elif año % 4 == 0:
    return True
  else:
    return False

print(es_bisiesto())
