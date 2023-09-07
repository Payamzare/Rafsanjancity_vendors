
#step1(Importing data into mysql)
#step2(use database)
SELECT *
FROM rafsanjan

#step3(Calculate the number of orders)

select round(`count comment`  / 0.05,0)  as 'order' from rafsanjan

#step4(Creating a type ID)

select  * ,(
    case
    when type= 'فست فود' then 1
     when type= 'رستوران ' then 2
     when type= 'آبمیوه و بستنی' then 3
     when type= 'کافه وصبحانه' then 4
     when type= 'شیرینی وآجیل' then 5
     when type= 'نان' then 6
     when type= 'سوپرمارکت' then 7
     when type= 'گوشت و پروتئینی' then 8
     when type= 'عطاری و محصولات طبیعی' then 9
     when type= 'سبزی مارکت' then 10
    end
    ) as type_id
from rafsanjan

#step5(Grid calculation)

select round(rate *0.4  + `order`*0.3+ `count comment` *0.3,2 ) as grade
from rafsanjan

#step6

select select  * ,(
    case
    when grade =0   then '-'
    when grade >=1 and grade <71 then 'E'
    when grade >=72 and grade <100 then 'D'
    when grade >=101 and grade <250 then 'C'
    when grade >=251 and grade <400 then 'B'
    when grade >=401  then 'A'
    end
    ) as Grade_type
from rafsanjan

#step7(Finally, it is output from the queries and transferred to PowerBi for visualization)
