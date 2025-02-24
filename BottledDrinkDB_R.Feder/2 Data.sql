use drinkdb 
go 
delete drink 
go 

insert drink(DrinkName, DateProduced, Price, DateSold, NeedsRefrigeration)
select 'coke', '12/28/2005', 5.50, '1/24/2006', 'no'
union select 'orange juice', '2/12/2018', 7.50, '4/11/2018', 'after opening'
union select 'beer', '4/21/2019', 20.00, '6/04/2015', 'after opening'
union select 'vitamin water', '6/11/2023', 6.00, '7/21/2023', 'no'--I switched the date sold to work with the constraints
union select 'Coke', '3/12/2019', 6.00, '4/28/2019', 'no'
union select 'lemonade', '4/28/2014', 9.oo, '5/28/2014', 'after opening'
union select 'grape juice', '5/23/2019', 20.00, '7/18/2019', 'after opening'
union select 'apple juice', '7/02/2014', 5.50, '8/13/2014', 'no'
union select 'seltzer', '11/05/2018', 8.00, '11/28/2018', 'no'
union select 'sprite', '2/8/2022', 5.50, '3/22/2022', 'no'
union select 'vitamin water', '7/11/2016', 7.00, '8/21/2016', 'no'
union select 'coffee', '11/02/2024', 15.00, null, 'yes'
union select 'milk', '10/29/2024', 12.00, null,'yes'

select * from Drink