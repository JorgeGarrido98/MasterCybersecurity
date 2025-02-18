// Contador de repeticiones: Crea una función que nos devuelva el número de veces que se repite cada una de las palabras que lo conforma.

const counterWords = [
  'code',
  'repeat',
  'eat',
  'sleep',
  'code',
  'enjoy',
  'sleep',
  'code',
  'enjoy',
  'upgrade',
  'code'
]
function repeatCounter(counterWords) {
  for (let i = 0; i < counterWords.length; i++) {
    let count = 0
    for (let j = 0; j < counterWords.length; j++) {
      if (counterWords[i] === counterWords[j]) {
        count++
      }
    }
    console.log(`${counterWords[i]} se repite ${count} veces`)
  }
}
repeatCounter(counterWords)
