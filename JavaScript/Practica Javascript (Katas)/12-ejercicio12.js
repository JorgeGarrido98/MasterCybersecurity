/* Valores únicos: Crea una función que reciba por parámetro un array y compruebe si existen elementos duplicados, en caso que existan los elimina para retornar un array sin los elementos duplicados.
pista (cuando eliminamos algo de un array, su longitud se verá afectada) */

const duplicates = [
  'sushi',
  'pizza',
  'burger',
  'potatoe',
  'pasta',
  'ice-cream',
  'pizza',
  'chicken',
  'onion rings',
  'pasta',
  'soda'
]
function removeDuplicates(duplicates) {
  let notDuplicates = []
  for (let i = 0; i < duplicates.length; i++) {
    if (!notDuplicates.includes(duplicates[i])) {
      notDuplicates.push(duplicates[i])
    } else {
      duplicates.splice(i, 1)
      i--
    }
  }
  return duplicates
}
console.log(removeDuplicates(duplicates))
