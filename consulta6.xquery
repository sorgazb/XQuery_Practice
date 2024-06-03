(:Obten el nombre del vino y su comentario asociado, unicamente
del vino llamado 'Marqués de Murrieta':)
for $vino in doc("vinos.xml")//vinos/vino
for $comentario in doc("vinos.xml")//comentarios/comentario
where $vino/@cod=$comentario/@idvino and $vino/nombre='Marqués de Murrieta'
return
concat(data($vino/nombre)," .",data($comentario/texto))