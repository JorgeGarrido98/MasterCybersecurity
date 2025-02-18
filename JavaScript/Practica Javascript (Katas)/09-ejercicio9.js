/* Calcular una suma puede ser tan simple como iterar sobre un array y sumar cada uno de los elementos. Implementa la función denominada sumAll que toma un array de números como argumento y devuelve la suma de todos los números de la matriz. */

const numbers = [1, 2, 3, 5, 45, 37, 58]

function sumAll(numbers) {
  let total = 0
  for (let i = 0; i < numbers.length; i++) {
    total = numbers[i] + total
  }
  return total
}
console.log(sumAll(numbers))
