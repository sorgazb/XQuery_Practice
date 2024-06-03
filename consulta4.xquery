(:Obten el precio medio de todos los vinos:)
for $vinos in doc("vinos.xml")//vinos
let $vinoMedia :=$vinos/vino
return
<PrecioMedio>{round((avg($vinoMedia/precio)),2)}€</PrecioMedio>