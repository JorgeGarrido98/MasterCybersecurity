/* Calcular promedio de strings: Crea una función que reciba por parámetro un array y cuando es un valor number lo sume y de lo contrario cuente la longitud del string y lo sume.
Pista: (typeof) */

const mixedElements = [6, 1, 'Rayo', 1, 'vallecano', '10', 'upgrade', 8, 'hub']
function averageWord(mixedElements) {
  let sum = 0
  for (let i = 0; i < mixedElements.length; i++) {
    if (typeof mixedElements[i] === 'number') {
      sum += mixedElements[i]
    } else {
      sum += mixedElements[i].length
    }
  }
  return sum
}
console.log(averageWord(mixedElements))
