(:Obten el el nombre de los vinos, el tipo y su precio aumentado en un 15%, mostrando una etiqueta de subida de precio,
solo de aquellos vinos con DO Ribera del Duero:)
for $vino in doc("vinos.xml")//vinos/vino
where $vino/@DO='Ribera del Duero'
return
<SubidaPrecio>{concat(data($vino/nombre),"-",data($vino/tipo),"-",round(data($vino/precio*1.15),2),"€")}</SubidaPrecio>