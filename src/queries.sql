CREATE table product_834002
(
	id varchar2(20),
	name varchar2(50),
	description varchar2(100),
	category varchar2(20),
	price float,
	quantity number,
	status varchar2(10)	
);

drop table product_834002;

SELECT sproduct_834002.CurrVal from dual

SELECT last_number
  FROM user_sequences
 WHERE sequence_name = 'sproduct_834002';

 SELECT sproduct_834002.CurrVal from dual
 
create sequence sproduct_834002
START WITH 100
INCREMENT BY 1
NOCACHE
NOCYCLE;

drop sequence sproduct_834002;

select * from product_834002;

INSERT INTO product_834002 VALUES ('PROD_'||sproduct_834002.nextVal,'abcdef','jskfdhjskd','sdfsdf',12,1,'Open')

update product_834002 set name='abc', category='def', price=1.1, quantity=1, status='open' where id='PROD_101';