// Usa un bucle para sumar el total de las ventas (sellCount) de todos los productos y mostrar por consola la media de ventas.

const products = [
  { name: 'Funko Dr. Strange', sellCount: 10 },
  { name: 'Mochila de protones: Ghostbusters', sellCount: 302 },
  { name: 'Sable laser FX', sellCount: 23 },
  { name: 'Varita de Voldemort', sellCount: 6 }
]
let totalVentas = 0
for (let i = 0; i < products.length; i++) {
  totalVentas += products[i].sellCount
}
let mediaVentas = totalVentas / products.length
console.log('Total de ventas:', totalVentas)
console.log('Media de ventas: ', mediaVentas)
