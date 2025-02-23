// Elimina el elemento que tenga la clase .fn-remove-me.
document.addEventListener('DOMContentLoaded', () => {
  const element = document.querySelector('.fn-remove-me')
  if (element) {
    element.remove()
  }
})
