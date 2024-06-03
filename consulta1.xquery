(:Obtener el nombre del vino junto con su precio, solo de los vinos de tipo Reserva:)
for $vino in doc("vinos.xml")//vinos/vino
where $vino/tipo= 'Reserva'
return
concat(data($vino/nombre),"(",data($vino/precio),"€)")
