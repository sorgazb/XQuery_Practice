(:Obten el nombre del vino y su precio, solo de aquellos con DO Ribera del Guadianda
Formato XQUERY:)
for $vino in doc("vinos.xml")//vinos/vino
order by $vino/nombre
where $vino/@DO='Ribera del Guadiana'
return
concat(data($vino/nombre),"(",data($vino/precio),"€)")