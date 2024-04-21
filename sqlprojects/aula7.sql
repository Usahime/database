1- 	select unidade as Fatec, count(*) as Quantidade
	from tbcurso
	group by unidade
	order by unidade ASC;

2-	select unidade as Fatec, count(*) as Quantidade
	from tbcurso
	group by unidade
	order by quantidade desc;

3-	select unidade as Fatec, count(*) as Quantidade
	from tbcurso
	group by unidade
	order by quantidade desc
	limit 1;

4-	select unidade as Fatec, count(*) as Quantidade
	from tbcurso
	group by unidade
	order by quantidade desc
	limit 1
	offset 1;

5-	select unidade as Fatec, count(*) as Quantidade
	from tbcurso
	group by unidade
	having count(*) = 3;

6-	select unidade as Fatec, turno, count(*) as Quantidade
	from tbcurso
	group by unidade, turno
	order by unidade asc;

7-	select unidade as Fatec, turno, count(*) as Quantidade
	from tbcurso
	group by unidade, turno
	having count(*) = 5
	order by unidade asc;

8-	select unidade as Fatec, turno, count(*) as Quantidade
	from tbcurso
	where unidade ilike '%São José dos Campos%'
	group by unidade, turno
	order by unidade asc;

9-	select unidade as Fatec, turno, sum(vaga)
	from tbcurso
	where unidade ilike '%São José dos Campos%'
	group by unidade, turno
	order by unidade asc;

10-	select turno, sum(vaga) as Quantidade
	from tbcurso
	group by turno
	order by turno asc;