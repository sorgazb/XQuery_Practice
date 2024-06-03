(:Realiza una tabla en la que aparezca la informacion del Vino Faustino,
queremos que aparezca el nombre, su comentario y la puntuacion asociada:)
<html>
<body>
<h1>Información Vino Faustino</h1>
<table border="1">
<tr>
<th>Nombre</th>
<th>Comentario</th>
<th>Puntuacion</th>
</tr>
{
  for $vino in doc("vinos.xml")//vinos/vino
  for $comentario in doc("vinos.xml")//comentarios/comentario
  for $puntuacion in doc("vinos.xml")//puntuaciones/puntuacion
  where $vino/@cod=$comentario/@idvino and $vino/@cod=$puntuacion/@id and $vino/nombre="Faustino"
  return
  <tr>
  <td text-align="center">{data($vino/nombre)}</td>
  <td text-align="center">{data($comentario/texto)}</td>
  <td text-align="center">{data($puntuacion/puntos)}</td>
  </tr>
}
</table>
</body>
</html>