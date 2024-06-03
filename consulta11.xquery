(:Realiza una tabla en la que aparezca la informacion del vino con el mayor precio y el precio minimo,
queremos que aparezca el nombre, el tipo, el precio, su comentario, la revista que lo valoro y la puntuacion asociada:)
<html>
<body>
<h1>Información Vino Faustino</h1>
<table border="1">
<tr>
<th>Nombre</th>
<th>Tipo</th>
<th>Precio</th>
<th>Comentario</th>
<th>Revista</th>
<th>Puntuacion</th>
</tr>
{
  let $precioMax :=max(doc("vinos.xml")//vino/precio)
  let $precioMin :=min(doc("vinos.xml")//vino/precio)
  for $vino in doc("vinos.xml")//vinos/vino
  for $comentario in doc("vinos.xml")//comentarios/comentario
  for $puntuacion in doc("vinos.xml")//puntuaciones/puntuacion
  where $vino/@cod=$comentario/@idvino and $vino/@cod=$puntuacion/@id and ($vino/precio=$precioMax or $vino/precio=$precioMin) 
  return
  <tr>
  <td>{data($vino/nombre)}</td>
  <td>{data($vino/tipo)}</td>
  <td>{data($vino/precio)}</td>
  <td>{data($comentario/texto)}</td>
  <td>{data($puntuacion/revista)}</td>
  <td>{data($puntuacion/puntos)}</td>
  </tr>
}
</table>
</body>
</html>
