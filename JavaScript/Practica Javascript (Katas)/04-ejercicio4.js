// 1.1 Consigue el valor "HULK" del array de avengers y muestralo por consola.
const avengers = ['HULK', 'SPIDERMAN', 'BLACK PANTHER']
console.log('Primer elemento:', avengers[0])

/* 1.2 Cambia el primer elemento de avengers a "IRONMAN"
const avengers = ['HULK', 'SPIDERMAN', 'BLACK PANTHER'] */
avengers[0] = 'IRONMAN'
console.log('Resultado del cambio del primer elemento:', avengers[0])

/* 1.3 Console numero de elementos en el array usando la propiedad correcta de Array.
const avengers = ['HULK', 'SPIDERMAN', 'BLACK PANTHER'] */
console.log(avengers.length)

/* 1.4 Añade 2 elementos al array: "Morty" y "Summer". 
Muestra en consola el último personaje del array */
const rickAndMortyCharacters = ['Rick', 'Beth', 'Jerry']
rickAndMortyCharacters.push('Morty', 'Summer')
console.log(
  'Último elemento:',
  rickAndMortyCharacters[rickAndMortyCharacters.length - 1]
)

/* 1.5 Elimina el último elemento del array y muestra el primero y el último por consola.
const rickAndMortyCharacters = ['Rick', 'Beth', 'Jerry'] */
rickAndMortyCharacters.pop()
console.log(
  'Primer y el último elemento :',
  rickAndMortyCharacters[0],
  'y',
  rickAndMortyCharacters[rickAndMortyCharacters.length - 1]
)

/* 1.6 Elimina el segundo elemento del array y muestra el array por consola.
const rickAndMortyCharacters = ['Rick', 'Beth', 'Jerry'] */
rickAndMortyCharacters.splice(1, 1)
console.log(
  'Nuevo array después de borrar el segundo elemento:',
  rickAndMortyCharacters
)
