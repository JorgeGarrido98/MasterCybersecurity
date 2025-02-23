// 1.1 Usa querySelector para mostrar por consola el botón con la clase .showme
const showmeButton = document.querySelector('.showme')
console.log('Botón con la clase .showme:', showmeButton)
console.log('----------------------------------')

// 1.2 Usa querySelector para mostrar por consola el h1 con el id #pillado
const pilladoH1 = document.querySelector('#pillado')
console.log('El h1 con el id #pillado:', pilladoH1)
console.log('----------------------------------')

// 1.3 Usa querySelector para mostrar por consola todos los p
const parrafos = document.querySelectorAll('p')
console.log('Todos los p:')
parrafos.forEach((parrafo) => console.log(parrafo))
console.log('----------------------------------')

/* 1.4 Usa querySelector para mostrar por consola todos los elementos con 
la clase.pokemon */
const pokemons = document.querySelectorAll('.pokemon')
console.log('Todos los elementos con la clase .pokemon:')
pokemons.forEach((pokemon) => console.log(pokemon))
console.log('----------------------------------')

/* 1.5 Usa querySelector para mostrar por consola todos los elementos con 
el atributo data-function="testMe". */
const elementosTestMe = document.querySelectorAll('[data-function="testMe"]')
console.log('Todos los elementos con el atributo data-function="testMe":')
elementosTestMe.forEach((elemento) => console.log(elemento))
console.log('----------------------------------')

/* 1.6 Usa querySelector para mostrar por consola el 3 personaje con el atributo 
data-function="testMe". */
const elementosTestMe2 = document.querySelectorAll('[data-function="testMe"]')
for (let i = 0; i < elementosTestMe2.length; i++) {
  if (i === 2) {
    console.log(
      'Tercer personaje con el atributo "data-function="testMe":',
      elementosTestMe2[i]
    )
  }
}
