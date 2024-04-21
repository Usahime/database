1. 	select * from tbfaculdade;

2. 	select *
   	from tbfaculdade
   	order by numero asc;

3. 	select *
   	from tbfaculdade
   	where municipio = 'Jacareí';

4. 	select *
	from tbfaculdade
	where numero IS NULL;

5.	select *
	from tbfaculdade
	where municipio ilike 'f%';

6.	select *
	from tbfaculdade
	where bairro like '%vila%;

7.	select *
	from tbfaculdade
	where cep like '%000';

8.	select *
	from tbfaculdade
	where cep like '_5%';

9.	select *
	from tbfaculdade
	where cep like '_5%'
	AND cep like '%2_';

10.	select *
	from tbfaculdade
	where length(numero) = 2;
	