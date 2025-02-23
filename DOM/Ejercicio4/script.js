/* 1.1 Añade un botón a tu html con el id btnToClick y en tu javascript añade el 
evento click que ejecute un console log con la información del evento del click */
document.addEventListener('DOMContentLoaded', (event) => {
  const button = document.createElement('button')
  button.id = 'btnToClick'
  button.textContent = 'Haz clic aquí'

  button.addEventListener('click', (event) => {
    console.log('Información del evento del click:', event)
  })

  const inputElement = document.querySelector('input.click')

  inputElement.insertAdjacentElement('afterend', button)
})

// 1.2 Añade un evento 'focus' que ejecute un console.log con el valor del input.
document.querySelectorAll('input').forEach((input) => {
  input.addEventListener('focus', (event) => {
    console.log(event.target.value)
  })
})

// 1.3 Añade un evento 'input' que ejecute un console.log con el valor del input.
document.querySelectorAll('input').forEach((input) => {
  input.addEventListener('input', (event) => {
    console.log(event.target.value)
  })
})
