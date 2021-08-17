drop database Zohobank;
use Zohobank;
create database Zohobank;
select * from transaction_details;
select * from customer_details;
use bank4;
drop table transaction_details;
update customer_details set status='Deactive' where customer_id=6;update account_details set status='Deactive' where customer_id=6;
UPDATE account_details ad JOIN customer_details cd ON ad.customer_id = cd.customer_id  SET ad.status="Deactive"&&cd.status="Deactive" WHERE cd.customer_id=12;
SELECT IDENT_CURRENT(customer_details);
CREATE TABLE customer_details
       (
       customer_id int not null auto_increment ,
       full_name VARCHAR(30)not null,
       city VARCHAR(15)not null,
       status varchar(10) not null check (status in ('Active', 'Deactive')),
       primary key(customer_id));
       alter table customer_details alter status  set default 'Active'; 
      
 CREATE TABLE account_details
   (  
        customer_id  int   not null ,
      account_number bigint not null auto_increment ,
      branch VARCHAR(30)Not null,
       balance decimal(14,4) ,
        status varchar(10) not null check (status in ('Active', 'Deactive')),
      CONSTRAINT ac_number_pk PRIMARY KEY(account_number),
    CONSTRAINT account_id_fk FOREIGN KEY(customer_id) REFERENCES customer_details(customer_id) on update cascade); 
      alter table account_details auto_increment = 1000;
     alter table account_details alter status  set default 'Active';
      
      CREATE TABLE transaction_details
    (   
     transaction_number bigint auto_increment not null ,
     customer_id int not null ,
     account_number bigint not null ,
      transaction_type VARCHAR(20) not null,
     transaction_amount bigint not null, 
     date bigint,
     status varchar(20) not null,
     CONSTRAINT tnumber_pk PRIMARY KEY(transaction_number),
     CONSTRAINT acnumber_fk FOREIGN KEY(customer_id,account_number) REFERENCES account_details(customer_id,account_number) );
    alter table transaction_details auto_increment = 1000;
      
       INSERT INTO customer_details(full_name,city) VALUES('Dhatchinamoorthi','karaikudi');
       INSERT INTO customer_details(full_name,city) VALUES('Janet1','karur');
       INSERT INTO customer_details(full_name,city) VALUES
	   ('Arun','paramakudi'),
	  ('vijay','sivagangai'),
	   ('Saravanan','karur'),
		('Markret','sivagangai'),
		('Azhagusundaram','sivakasi'),
		('Deepak','Tiruvannamalai'),
		('Logehsan','Madurai'),
		('Frank','Dindugal');
	
     INSERT INTO account_details(customer_id,balance,branch) VALUES(0001,1100000,'zoho');
     INSERT INTO account_details(customer_id,balance,branch) VALUES(0001,123450,'zoho');
     INSERT INTO account_details(customer_id,balance,branch) VALUES(0001,21654,'zoho');
	
  INSERT INTO account_details (customer_id,balance,branch)VALUES(0002,100600,'zoho'),
    (0002,104560,'zoho'),
       (0002,104710,'zoho');

	   INSERT INTO account_details (customer_id,balance,branch)VALUES(0003,700000,'zoho');
        INSERT INTO account_details (customer_id,balance,branch)VALUES(0003,300000,'zoho');
          INSERT INTO account_details(customer_id,balance,branch) VALUES(0003,20000,'zoho');
   INSERT INTO account_details (customer_id,balance,branch)VALUES(0004,100000,'zoho');
    INSERT INTO account_details (customer_id,balance,branch)VALUES(0004,200000,'zoho');
       INSERT INTO account_details(customer_id,balance,branch) VALUES(0004,300000,'zoho');
      
 		INSERT INTO account_details(customer_id,balance,branch) VALUES(0005,100000,'zoho');
        INSERT INTO account_details (customer_id,balance,branch)VALUES(0005, 100000,'zoho');
    INSERT INTO account_details (customer_id,balance,branch)VALUES(0005,200000,'zoho');
        
 		INSERT INTO account_details (customer_id,balance,branch)VALUES(0006,1200000,'zoho');
 		INSERT INTO account_details (customer_id,balance,branch)VALUES(0007,1300000,'zoho');
 		INSERT INTO account_details (customer_id,balance,branch)VALUES(0008,1100000,'zoho');
 		INSERT INTO account_details (customer_id,balance,branch)VALUES(0009,1300000,'zoho');
 		INSERT INTO account_details (customer_id,balance,branch)VALUES(0010,100300,'zoho'); 
        select * from account_details ;
 
	truncate table customer_details;
