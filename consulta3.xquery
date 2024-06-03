(:Obten el nombre del vino y su precio, solo de aquellos con DO Ribera del Guadianda, ordenado por nombre
Formato XPATH:)
for $vino in doc("vinos.xml")//vinos/vino[@DO='Ribera del Guadiana']
order by $vino/nombre
return
concat(data($vino/nombre),"(",data($vino/precio),"€)")