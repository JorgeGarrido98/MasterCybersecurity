''' Escribe un programa que determine el día de la semana correspondiente a un
número ingresado por el usuario (1 para lunes, 2 para martes, etc.). '''
def diaSemana():
  dia = int(input("Ingrese el número del día de la semana (1 para lunes, 2 para martes... :"))
  if dia == 1:
    print("Lunes")
  elif dia == 2:
    print("Martes")
  elif dia == 3:
    print("Miércoles")
  elif dia == 4:
    print("Jueves")
  elif dia == 5:
    print("Viernes")
  elif dia == 6:
    print("Sábado")
  elif dia == 7:
    print("Domingo")
  else:
    print("No hay ningún día de la semana con ese número")

diaSemana()