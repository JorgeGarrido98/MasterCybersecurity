// Calcular un promedio (media) es una tarea extremadamente común.

const numbers = [12, 21, 38, 5, 45, 37, 6]
function average(numbers) {
  let sum = 0
  for (let i = 0; i < numbers.length; i++) {
    sum += numbers[i]
  }
  return sum / numbers.length
}
console.log(average(numbers))
