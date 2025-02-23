--Reports:
--1) we would like to know the average days each type of drink sits in our warehouse before it was sold

select AvgTimeInWarehouse = case 
    when datesold is not null then concat(avg(datediff(day, dateproduced, datesold)), ' days') 
    else datediff(day, dateproduced, getdate())
    end
from drink
group by drinkname

--2) for the FDA show a list of the drink name, date produced, date sold, best by date, and how many days before the best by date was the drink sold

select drinkname,dateproduced,datesold,bestby, datediff(day, DateSold, bestby) as NumDaysSoldB4BestByDate
from drink

--3) for a advertisement show me one column formated like this: drinkname, average time from the date sold to the experation date 
select drinkname, (avg(datediff(day, DateSold, bestby)) as AvgTimeFromSoldToExp
from drink
group by drinkname

--4) if the sold date is null, then how many days there is left to sell the drink before the expiration date

dayslefttoselldrink = when datesold null, then bestbuydate - currentdate

select datediff(day,  bestby, getdate()) as DaysLeftToSellUnsoldDrinks --switch order of bsetby and getdate
from drink 
where datesold is null 