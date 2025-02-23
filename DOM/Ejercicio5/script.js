/* Basandote en el array siguiente, crea una lista ul > li dinámicamente en el html 
que imprima cada uno de los albums.*/

const albums = [
  'De Mysteriis Dom Sathanas',
  'Reign of Blood',
  'Ride the Lightning',
  'Painkiller',
  'Iron Fist'
]

// Creamos el botón y lo añadimos al cuerpo del documento
const button = document.createElement('button')
button.textContent = 'Mostrar Álbumes'
document.body.appendChild(button)

// Creamos el contenedor para la lista
const container = document.createElement('div')
document.body.appendChild(container)

// Añadimos el evento al botón
button.addEventListener('click', () => {
  const lista = document.createElement('ul')
  container.innerHTML = '' // Limpiamos el contenedor antes de añadir la nueva lista

  albums.forEach((album) => {
    const li = document.createElement('li')
    li.textContent = album
    lista.appendChild(li)
  })

  container.appendChild(lista) // Añadimos la lista al contenedor
})
