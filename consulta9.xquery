(:Obten el nombre, el comentario y su puntuacion de aquel vino con nombre 'Faustino':)
for $vino in doc("vinos.xml")//vinos/vino
for $comentario in doc ("vinos.xml")//comentarios/comentario
for $puntuacion in doc ("vinos.xml")//puntuaciones/puntuacion
where $vino/@cod=$comentario/@idvino and $vino/@cod=$puntuacion/@id and $vino/nombre="Faustino"
return concat(($vino),($comentario),($puntuacion))