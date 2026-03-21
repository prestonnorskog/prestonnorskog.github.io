create database norskog;

create table customer
(
customerid		int				not null primary key	,
lastname		varchar(50)		not null				,
firstname		varchar(50)		not null				,
streetaddress	varchar(20)		not null				,
city			varchar(20)		not null				,
state			char(10)		not null				,
zip				char(10)		not null				,
phone			char(10)		not null				,
cust_type		varchar(10)		not null
);
create table `order`
(
ordernumber 	int 			not null primary key			,
orderdate		date			not null						,
customerid 		int				not null references customer(customerid)
);

INSERT INTO customer (customerid, lastname, firstname, streetaddress, city, state, zip, phone, cust_type)
VALUES 
(1, 'Smith', 'John', '123 Main St', 'New York', 'NY', '10001', '1234567890', 'Regular'),
(2, 'Doe', 'Jane', '456 Elm St', 'Los Angeles', 'CA', '90001', '9876543210', 'Premium'),
(3, 'Brown', 'Alice', '789 Maple Ave', 'Chicago', 'IL', '60601', '5551234567', 'Regular'),
(4, 'Johnson', 'Bob', '321 Oak St', 'Houston', 'TX', '77001', '4445556666', 'Premium'),
(5, 'Green', 'Charlie', '654 Pine St', 'Miami', 'FL', '33101', '3334445555', 'Regular');

INSERT INTO `order` (ordernumber, orderdate, customerid)
VALUES 
(101, '2024-11-01', 1),
(102, '2024-11-02', 2),
(103, '2024-11-03', 3),
(104, '2024-11-04', 4),
(105, '2024-11-05', 5);

-- Verify the inserted records
SELECT * FROM customer;
SELECT * FROM `order`;