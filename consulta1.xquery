for $vino in doc("vinos.xml")//vinos/vino
where $vino/tipo= 'Reserva'
return
concat(data($vino/nombre),"(",data($vino/precio),"€)")
