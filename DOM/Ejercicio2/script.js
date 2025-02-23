// 1.1 Inserta dinamicamente en un html un div vacio con javascript.
var nuevoDiv = document.createElement('div')
document.body.appendChild(nuevoDiv)

// 1.2 Inserta dinamicamente en un html un div que contenga una p con javascript.
var nuevoDiv = document.createElement('div')
var nuevoP = document.createElement('p')
nuevoP.textContent = 'Este es un párrafo dinámico'
nuevoDiv.appendChild(nuevoP)
document.body.appendChild(nuevoDiv)

/* 1.3 Inserta dinamicamente en un html un div que contenga 6 p utilizando un 
	loop con javascript. */
var nuevoDiv = document.createElement('div')
for (let i = 0; i < 6; i++) {
  var nuevoP = document.createElement('p')
  nuevoP.textContent = `Este es el párrafo ${i + 1} dinámico`
  nuevoDiv.appendChild(nuevoP)
}
document.body.appendChild(nuevoDiv)

/* 1.4 Inserta dinamicamente con javascript en un html una p con el 
	texto 'Soy dinámico!'. */
var nuevoP = document.createElement('p')
nuevoP.textContent = 'Soy dinámico!'
document.body.appendChild(nuevoP)

// 1.5 Inserta en el h2 con la clase .fn-insert-here el texto 'Wubba Lubba dub dub'.
var h2 = document.querySelector('.fn-insert-here')
h2.textContent = 'Wubba Lubba dub dub'

/* 1.6 Basandote en el siguiente array crea una lista ul > li con 
los textos del array. */
const apps = ['Facebook', 'Netflix', 'Instagram', 'Snapchat', 'Twitter']
var nuevoUl = document.createElement('ul')
for (let i = 0; i < apps.length; i++) {
  var nuevoLi = document.createElement('li')
  nuevoLi.textContent = apps[i]
  nuevoUl.appendChild(nuevoLi)
}
document.body.appendChild(nuevoUl)

// 1.7 Elimina todos los nodos que tengan la clase .fn-remove-me
const nodos = document.querySelectorAll('.fn-remove-me')
for (let i = 0; i < nodos.length; i++) {
  nodos[i].remove()
}

/* 1.8 Inserta una p con el texto 'Voy en medio!' entre los dos div. 
	Recuerda que no solo puedes insertar elementos con .appendChild. */
const parrafoNuevo = document.createElement('p')
nuevoP.textContent = 'Voy en medio!'

var primerDiv = document.querySelector('div')[0]
var segundoDiv = document.querySelector('div')[1]

if (primerDiv && segundoDiv) {
  primerDiv.parentNode.insertBefore(nuevoParrafo, segundoDiv)
}

/* 1.9 Inserta p con el texto 'Voy dentro!', dentro de todos los div con la clase 
	.fn-insert-here */
const divs = document.querySelectorAll('.fn-insert-here')
for (let i = 0; i < divs.length; i++) {
  var nuevoP = document.createElement('p')
  nuevoP.textContent = 'Voy dentro!'
  divs[i].appendChild(nuevoP)
}
