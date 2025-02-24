use DrinkDB
go 
drop table if exists dbo.drink
go 
create table dbo.drink(
    DrinkId int not null identity primary key,
    DrinkName varchar (30) not null 
        constraint c_drink_name_can_not_be_blank check (DrinkName not like ' '),
    DateProduced date not null,
    Price decimal (4,2) not null 
        constraint c_price_can_not_be_negative check (price > 0),
        constraint c_price_must_be_between_5_50_and_30_00 check (price between 5.50 and 30.00),
    DateSold date null,
    BestBy as (Case
                    when NeedsRefrigeration like 'Yes' then dateadd(week, 5, DateProduced)
                    when NeedsRefrigeration like 'No' then dateadd(day, 70, DateProduced)
                    else dateadd(day, 60, DateProduced)
               End) persisted,
    NeedsRefrigeration varchar (18) 
        constraint c_NeedsRefrigeration_is_either_yes_no_or_After_Opening check (NeedsRefrigeration in ('yes', 'no', 'After Opening')),

    constraint c_date_sold_must_be_before_Best_By_Date check(datesold < BestBy)
)
go





                                
