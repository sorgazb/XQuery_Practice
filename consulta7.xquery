(:Obten el nombre y su comentario asociado, de aquellos vinos con
DO 'Ribera del Guadiana' y con un precio inferior a 15:)
for $vino in doc("vinos.xml")//vinos/vino
for $comentario in doc("vinos.xml")//comentarios/comentario
where $vino/@cod=$comentario/@idvino and $vino/@DO='Ribera del Guadiana' and $vino/precio > 15
return
concat(data($vino/nombre),"-",data($comentario/texto))