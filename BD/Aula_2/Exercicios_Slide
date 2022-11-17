--Liste todos os carros das marcas Fiat e VW, e os carros sem marcas.

select modelo, marcas.marca
from carros 
left join marcas 
on marcas.id_marcas = carros.marca
where marcas.marca like 'Fiat' 
or marcas.marca like 'VW'
or marcas.marca is null


--Mostre as marcas que não possuem veiculos.

select marcas.marca, carros.modelo
from marcas
left join carros
on carros.marca = marcas.id_marcas
where carros.marca is null


--Mostre os veiculos da GM e Ford ordenados por ordem alfabetica.

select modelo, marcas.marca
from carros 
left join marcas 
on marcas.id_marcas = carros.marca
where marcas.marca like 'Fiat' 
or marcas.marca like 'VW'
order by modelo asc


--Mostre as marcas que possuem mais de 3 carros cadastrados

select marcas.marca
from marcas
join carros on carros.marca = marcas.id_marcas
group by marcas.marca
having count(carros.marca) > 3

--Usando subconsulta
select distinct marcas.marca 
from marcas
inner join carros on marcas.id_marcas = carros.marca
and (select count(*) from carros where carros.marca = marcas.id_marcas) > 3

--Versão gambiarra
select marcas.marca, count(*)
from marcas, carros
where marcas.id_marcas = carros.marca
group by marcas.marca
order by marcas.marca
limit 1
