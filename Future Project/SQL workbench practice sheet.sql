SELECT * FROM bank.district;
SELECT a1 as id, a2 as region, a3 as customernum
from bank.district
limit 10;
select * from bank.district;

select "Hello World";
SELECT 2 + 4;
select distinct(type) from bank.card;
select a2 from bank.district;
select distinct(a2) from bank.district;
select a3, a2 from bank.district ORDER BY a2 ASC limit 30;
SELECT * from bank.card;

select loan_id, account_id, date, duration, status, amount-payments as balance from bank.loan;
select loan_id, account_id, date, duration, status, (amount-payments)/1000 as 'balance in thousands' from bank.loan;

select * from bank.loan where status in ('B','A');
select * from bank.loan where status = 'A' or status = 'B';
select * from bank.loan where status in ('B','A') and amount>100000;
select account_id as 'Account ID', amount, status from bank.loan where status in ('A','B') and amount >10000;
select * from bank.loan order by account_id desc limit 10;


select max(amount) from bank.order where k_symbol = 'SIPO';

select length('Matthew');
select *, length(k_symbol) as 'Symbol_length' from bank.order;
select min(length(k_symbol)) from bank.order;
select concat('Matthew',' Barger');
select *, concat(order_id, account_id) as 'concat' from bank.order;

select *, lower(A2) as 'lower', upper(A2) as 'same lol' from bank.district;
select A2, left(A2,5), A3, ltrim(A3) from bank.district;

select avg(amount) from bank.order;
select floor(avg(amount)) from bank.order;
select ceiling(avg(amount)) from bank.order;

select * from bank.order where not k_symbol='SIPO' order by amount desc limit 10;

select *, format(amount,2) from bank.loan;

select A3 from bank.district;
select distinct A3 from bank.district;
select * from bank.order
where k_symbol in ('leasing', 'pojistine');
select * from bank.account
where district_id in (1,2,3,4,5);
-- We are trying to get the same result using the between operator.
-- Note that 1 and 5 are included in the range of values compared/evaluated
select * from bank.account
where district_id between 1 and 5;

select *, amount-payments as diff from bank.loan 
where amount-payments between 1000 and 10000;

select * from bank. district 
where a3 like 'north%';

select * from bank.order 
where k_symbol regexp 'o$';

select * from bank. district 
where k_sympol regexp '^s';

select * from bank.district
where a2 regexp 'cesk[ey]';

--------------------------------

select account_id, district_id, frequency, convert(date,date) from bank.account;
select account_id, district_id, frequency, CONVERT(date,datetime) from bank.account;
-- next is a two step process:
select substring_index(issued, ' ', 1) from bank.card;
select convert(SUBSTRING_INDEX(issued, ' ', 1), date) from bank.card;
-- converting the original format to the date format that we need:
select date_format(convert(date,date), '%Y-%M-%D') from bank.loan;
-- if we just want to extract some specific part of the date
select date_format(convert(date,date), '%Y') from bank.loan;
-- Logival order of procesing
select * from bank.card
where type = 'classic'
order by card_id
limit 10;
select * from bank.order
where k_symbol = 'SIPO' and amount > 5000
order by order_id desc
limit 10;
select isnull('Hello');
select isnull(card_id) from bank.card;
-- this is used to check all the elements of a column.
-- 0 means not null, 1 means null
select sum(isnull(card_id)) from bank.card;
select * from bank.order
where k_symbol is null;
select loan_id, account_id,
case
when status = 'A' then 'Good - Contract Finished'
when status = 'B' then 'Defaulter - Contract Finished'
when status = 'C' then 'Good - Contract Running'
else 'In Debt - Contract Running'
end as 'Status_Description'
from bank.loan;

select * from bank.card where type = 'classic' order by card_id limit 10;