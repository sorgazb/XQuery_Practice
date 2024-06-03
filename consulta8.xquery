(:Obten del vino con el precio Maximo el nombre y su comentario asociado:)
let $precioMax :=max(doc("vinos.xml")//vino/precio)
for $vino in doc("vinos.xml")//vinos/vino
for $comentario in doc ("vinos.xml")//comentarios/comentario
where $vino/@cod=$comentario/@idvino and $vino/precio=$precioMax
return
concat(data($vino/nombre),"-",data($comentario/texto))