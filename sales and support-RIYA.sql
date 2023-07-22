create database interview;

use interview;

-- table  agents 

CREATE TABLE IF NOT EXISTS `agents` (
  `AGENT_CODE` varchar(6) NOT NULL DEFAULT '',
  `AGENT_NAME` varchar(40) DEFAULT NULL,
  `WORKING_AREA` varchar(35) DEFAULT NULL,
  `COMMISSION` decimal(10,2) DEFAULT NULL,
  `PHONE_NO` varchar(15) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`AGENT_CODE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- -- Dumping data for table `agents`

INSERT INTO `agents` (`AGENT_CODE`, `AGENT_NAME`, `WORKING_AREA`, `COMMISSION`, `PHONE_NO`, `COUNTRY`) VALUES
('A007  ', 'Ramasundar                              ', 'Bangalore                          ', '0.15', '077-25814763   ', '\r'),
('A003  ', 'Alex                                    ', 'London                             ', '0.13', '075-12458969   ', '\r'),
('A008  ', 'Alford                                  ', 'New York                           ', '0.12', '044-25874365   ', '\r'),
('A011  ', 'Ravi Kumar                              ', 'Bangalore                          ', '0.15', '077-45625874   ', '\r'),
('A010  ', 'Santakumar                              ', 'Chennai                            ', '0.14', '007-22388644   ', '\r'),
('A012  ', 'Lucida                                  ', 'San Jose                           ', '0.12', '044-52981425   ', '\r'),
('A005  ', 'Anderson                                ', 'Brisban                            ', '0.13', '045-21447739   ', '\r'),
('A001  ', 'Subbarao                                ', 'Bangalore                          ', '0.14', '077-12346674   ', '\r'),
('A002  ', 'Mukesh                                  ', 'Mumbai                             ', '0.11', '029-12358964   ', '\r'),
('A006  ', 'McDen                                   ', 'London                             ', '0.15', '078-22255588   ', '\r'),
('A004  ', 'Ivan                                    ', 'Torento                            ', '0.15', '008-22544166   ', '\r'),
('A009  ', 'Benjamin                                ', 'Hampshair                          ', '0.11', '008-22536178   ', '\r');

-- create table customer

CREATE TABLE IF NOT EXISTS `customer` (
  `CUST_CODE` varchar(6) NOT NULL,
  `CUST_NAME` varchar(40) NOT NULL,
  `CUST_CITY` varchar(35) DEFAULT NULL,
  `WORKING_AREA` varchar(35) NOT NULL,
  `CUST_COUNTRY` varchar(20) NOT NULL,
  `GRADE` decimal(10,0) DEFAULT NULL,
  `OPENING_AMT` decimal(12,2) NOT NULL,
  `RECEIVE_AMT` decimal(12,2) NOT NULL,
  `PAYMENT_AMT` decimal(12,2) NOT NULL,
  `OUTSTANDING_AMT` decimal(12,2) NOT NULL,
  `PHONE_NO` varchar(17) NOT NULL,
  `AGENT_CODE` varchar(6) DEFAULT NULL,
  KEY `CUSTCITY` (`CUST_CITY`),
  KEY `CUSTCITY_COUNTRY` (`CUST_CITY`,`CUST_COUNTRY`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

 -- Dumping data for table `customer`


INSERT INTO `customer` (`CUST_CODE`, `CUST_NAME`, `CUST_CITY`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `OPENING_AMT`, `RECEIVE_AMT`, `PAYMENT_AMT`, `OUTSTANDING_AMT`, `PHONE_NO`, `AGENT_CODE`) VALUES
('C00013', 'Holmes', 'London                             ', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003  '),
('C00001', 'Micheal', 'New York                           ', 'New York', 'USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', 'A008  '),
('C00020', 'Albert', 'New York                           ', 'New York', 'USA', '3', '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', 'A008  '),
('C00025', 'Ravindran', 'Bangalore                          ', 'Bangalore', 'India', '2', '5000.00', '7000.00', '4000.00', '8000.00', 'AVAVAVA', 'A011  '),
('C00024', 'Cook', 'London                             ', 'London', 'UK', '2', '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', 'A006  '),
('C00015', 'Stuart', 'London                             ', 'London', 'UK', '1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003  '),
('C00002', 'Bolt', 'New York                           ', 'New York', 'USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008  '),
('C00018', 'Fleming', 'Brisban                            ', 'Brisban', 'Australia', '2', '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC', 'A005  '),
('C00021', 'Jacks', 'Brisban                            ', 'Brisban', 'Australia', '1', '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF', 'A005  '),
('C00019', 'Yearannaidu', 'Chennai                            ', 'Chennai', 'India', '1', '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', 'A010  '),
('C00005', 'Sasikant', 'Mumbai                             ', 'Mumbai', 'India', '1', '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312', 'A002  '),
('C00007', 'Ramanathan', 'Chennai                            ', 'Chennai', 'India', '1', '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', 'A010  '),
('C00022', 'Avinash', 'Mumbai                             ', 'Mumbai', 'India', '2', '7000.00', '11000.00', '9000.00', '9000.00', '113-12345678', 'A002  '),
('C00004', 'Winston', 'Brisban                            ', 'Brisban', 'Australia', '1', '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA', 'A005  '),
('C00023', 'Karl', 'London                             ', 'London', 'UK', '0', '4000.00', '6000.00', '7000.00', '3000.00', 'AAAABAA', 'A006  '),
('C00006', 'Shilton', 'Torento                            ', 'Torento', 'Canada', '1', '10000.00', '7000.00', '6000.00', '11000.00', 'DDDDDDD', 'A004  '),
('C00010', 'Charles', 'Hampshair                          ', 'Hampshair', 'UK', '3', '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', 'A009  '),
('C00017', 'Srinivas', 'Bangalore                          ', 'Bangalore', 'India', '2', '8000.00', '4000.00', '3000.00', '9000.00', 'AAAAAAB', 'A007  '),
('C00012', 'Steven', 'San Jose                           ', 'San Jose', 'USA', '1', '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', 'A012  '),
('C00008', 'Karolina', 'Torento                            ', 'Torento', 'Canada', '1', '7000.00', '7000.00', '9000.00', '5000.00', 'HJKORED', 'A004  '),
('C00003', 'Martin', 'Torento                            ', 'Torento', 'Canada', '2', '8000.00', '7000.00', '7000.00', '8000.00', 'MJYURFD', 'A004  '),
('C00009', 'Ramesh', 'Mumbai                             ', 'Mumbai', 'India', '3', '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No', 'A002  '),
('C00014', 'Rangarappa', 'Bangalore                          ', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'AAAATGF', 'A001  '),
('C00016', 'Venkatpati', 'Bangalore                          ', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'JRTVFDD', 'A007  '),
('C00011', 'Sundariya', 'Chennai                            ', 'Chennai', 'India', '3', '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS', 'A010  ');

-- create table orders

CREATE TABLE IF NOT EXISTS `orders` (
  `ORD_NUM` decimal(6,0) NOT NULL,
  `ORD_AMOUNT` decimal(12,2) NOT NULL,
  `ADVANCE_AMOUNT` decimal(12,2) NOT NULL,
  `ORD_DATE` date NOT NULL,
  `CUST_CODE` varchar(6) NOT NULL,
  `AGENT_CODE` varchar(6) NOT NULL,
  `ORD_DESCRIPTION` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table `orders`


INSERT INTO `orders` (`ORD_NUM`, `ORD_AMOUNT`, `ADVANCE_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
('200100', '1000.00', '600.00', '2008-01-08', 'C00015', 'A003  ', 'SOD\r'),
('200110', '3000.00', '500.00', '2008-04-15', 'C00019', 'A010  ', 'SOD\r'),
('200107', '4500.00', '900.00', '2008-08-30', 'C00007', 'A010  ', 'SOD\r'),
('200112', '2000.00', '400.00', '2008-05-30', 'C00016', 'A007  ', 'SOD\r'),
('200113', '4000.00', '600.00', '2008-06-10', 'C00022', 'A002  ', 'SOD\r'),
('200102', '2000.00', '300.00', '2008-05-25', 'C00012', 'A012  ', 'SOD\r'),
('200114', '3500.00', '2000.00', '2008-08-15', 'C00002', 'A008  ', 'SOD\r'),
('200122', '2500.00', '400.00', '2008-09-16', 'C00003', 'A004  ', 'SOD\r'),
('200118', '500.00', '100.00', '2008-07-20', 'C00023', 'A006  ', 'SOD\r'),
('200119', '4000.00', '700.00', '2008-09-16', 'C00007', 'A010  ', 'SOD\r'),
('200121', '1500.00', '600.00', '2008-09-23', 'C00008', 'A004  ', 'SOD\r'),
('200130', '2500.00', '400.00', '2008-07-30', 'C00025', 'A011  ', 'SOD\r'),
('200134', '4200.00', '1800.00', '2008-09-25', 'C00004', 'A005  ', 'SOD\r'),
('200115', '2000.00', '1200.00', '2008-02-08', 'C00013', 'A013  ', 'SOD\r'),
('200108', '4000.00', '600.00', '2008-02-15', 'C00008', 'A004  ', 'SOD\r'),
('200103', '1500.00', '700.00', '2008-05-15', 'C00021', 'A005  ', 'SOD\r'),
('200105', '2500.00', '500.00', '2008-07-18', 'C00025', 'A011  ', 'SOD\r'),
('200109', '3500.00', '800.00', '2008-07-30', 'C00011', 'A010  ', 'SOD\r'),
('200101', '3000.00', '1000.00', '2008-07-15', 'C00001', 'A008  ', 'SOD\r'),
('200111', '1000.00', '300.00', '2008-07-10', 'C00020', 'A008  ', 'SOD\r'),
('200104', '1500.00', '500.00', '2008-03-13', 'C00006', 'A004  ', 'SOD\r'),
('200106', '2500.00', '700.00', '2008-04-20', 'C00005', 'A002  ', 'SOD\r'),
('200125', '2000.00', '600.00', '2008-10-10', 'C00018', 'A005  ', 'SOD\r'),
('200117', '800.00', '200.00', '2008-10-20', 'C00014', 'A001  ', 'SOD\r'),
('200123', '500.00', '100.00', '2008-09-16', 'C00022', 'A002  ', 'SOD\r'),
('200120', '500.00', '100.00', '2008-07-20', 'C00009', 'A002  ', 'SOD\r'),
('200116', '500.00', '100.00', '2008-07-13', 'C00010', 'A009  ', 'SOD\r'),
('200124', '500.00', '100.00', '2008-06-20', 'C00017', 'A007  ', 'SOD\r'),
('200126', '500.00', '100.00', '2008-06-24', 'C00022', 'A002  ', 'SOD\r'),
('200129', '2500.00', '500.00', '2008-07-20', 'C00024', 'A006  ', 'SOD\r'),
('200127', '2500.00', '400.00', '2008-07-20', 'C00015', 'A003  ', 'SOD\r'),
('200128', '3500.00', '1500.00', '2008-07-20', 'C00009', 'A002  ', 'SOD\r'),
('200135', '2000.00', '800.00', '2008-09-16', 'C00007', 'A010  ', 'SOD\r'),
('200131', '900.00', '150.00', '2008-08-26', 'C00012', 'A012  ', 'SOD\r'),
('200133', '1200.00', '400.00', '2008-06-29', 'C00009', 'A002  ', 'SOD\r'),
('200132', '4000.00', '2000.00', '2008-08-15', 'C00013', 'A013  ', 'SOD\r');


#Segment 1: Database - Tables, Columns, Relationships*/

#1.Identify the tables in the database and their respective columns.
SHOW COLUMNS FROM agents; -- it Identify all respective columns from agents table. 
SHOW COLUMNS FROM customer; -- it Identify all respective columns from customers table.
SHOW COLUMNS FROM orders; -- it Identify all respective columns from orders table.


#2.Determine the number of records in each table within the schema.
SELECT COUNT(*) FROM agents;
SELECT COUNT(*) FROM customer;
SELECT COUNT(*) FROM orders;


#3.Identify and handle any missing or inconsistent values in the dataset.

-- a. Missing values in the Agents table: 
SELECT * FROM agents
 WHERE AGENT_CODE IS NULL OR
 AGENT_NAME  IS NULL OR
 WORKING_AREA IS NULL OR
 COMMISSION IS NULL OR 
 PHONE_NO IS NULL OR 
 COUNTRY IS NULL;

-- b. Missing values in the Customer table:
SELECT * FROM customer
 WHERE CUST_CODE IS NULL OR
 CUST_NAME IS NULL OR
 CUST_CITY IS NULL OR
 WORKING_AREA IS NULL OR
 CUST_COUNTRY IS NULL OR
 GRADE IS NULL OR
 OPENING_AMT IS NULL OR 
 RECEIVE_AMT IS NULL OR 
 PAYMENT_AMT IS NULL OR 
 OUTSTANDING_AMT IS NULL OR 
 PHONE_NO IS NULL OR 
 AGENT_CODE IS NULL;

-- c. Missing values in the Orders table:
SELECT * FROM orders
 WHERE ORD_NUM IS NULL OR
 ORD_AMOUNT IS NULL OR
 ADVANCE_AMOUNT IS NULL OR
 ORD_DATE IS NULL OR
 AGENT_CODE IS NULL OR
 ORD_DESCRIPTION IS NULL;
 
 
 # 4.Analyse the data types of the columns in each table to ensure they are appropriate for the stored data.
 
 -- a. Data types in the Agents table:
SELECT COLUMN_NAME,
 DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_NAME = 'agents';
 
 -- b. Data types in the Customer table:
SELECT COLUMN_NAME,
 DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_NAME = 'customer';
 
  -- c. Data types in the Orders table:
SELECT COLUMN_NAME,
 DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_NAME = 'orders';
 
 
 #5.Identify any duplicate records within the tables and develop a strategy for handling them.

-- a.Identify Duplicate records in the Agents table:
SELECT * FROM agents
 GROUP BY AGENT_CODE
 HAVING COUNT(AGENT_CODE) > 1;

-- b. Identify Duplicate records in the Customer table:
SELECT * FROM customer
 GROUP BY CUST_CODE
 HAVING COUNT(CUST_CODE) > 1;
 
 -- c. Identify Duplicate records in the Orders table:
SELECT * FROM orders
 GROUP BY ORD_NUM
 HAVING COUNT(ORD_NUM) > 1;


#segment 2:- Basic Sales Analysis

#1.Write SQL queries to retrieve the total number of orders, total revenue, and average order value.
SELECT COUNT(ORD_NUM) AS TOTAL_NUMBER_OF_ORDERS,
SUM(ORD_AMOUNT + ADVANCE_AMOUNT) AS TOTAL_REVENUE,
AVG(ORD_AMOUNT + ADVANCE_AMOUNT) AS AVERAGE_ORDER_VALUE 
FROM orders;

/*
#2.The operations team needs to track the agent who has handled the maximum number of high-grade customers.
 Write a SQL query to find the agent_name who has the highest count of customers with a grade of 5.
 Display the agent_name and the count of high-grade customers.*/
 
SELECT agents.AGENT_NAME,count(customer.GRADE) AS HIGH_GRADE_CUSTOMER FROM customer
 JOIN agents 
 ON customer.AGENT_CODE = agents.AGENT_CODE
 WHERE GRADE = 5
 GROUP BY AGENT_NAME
 ORDER BY HIGH_GRADE_CUSTOMER
 LIMIT 1;
 
/* 
 #3.The company wants to identify the most active customer cities in terms of the total order amount.
 Write a SQL query to find the top 3 customer cities with the highest total order amount.
 Include cust_city and total_order_amount in the output.*/
SELECT customer.CUST_CITY, SUM(ORD_AMOUNT + ADVANCE_AMOUNT) AS TOTAL_ORDER_AMOUNT
FROM orders
JOIN customer ON customer.CUST_CODE = orders.CUST_CODE
GROUP BY customer.CUST_CITY
ORDER BY TOTAL_ORDER_AMOUNT DESC LIMIT 3;


#SEGMENT 3:- Segment 3: Customer Analysis:

#1.Calculate the total number of customers.
SELECT COUNT(*) AS TOTAL_CUSTOMER FROM customer;

#2.Identify the top-spending customers based on their total order value.
SELECT customer.CUST_NAME AS CUSTOMER,SUM(ORD_AMOUNT + ADVANCE_AMOUNT) AS TOTAL_ORDER_VALUE FROM customer
 JOIN orders
 ON orders.CUST_CODE = customer.CUST_CODE
 GROUP BY CUSTOMER
 ORDER BY TOTAL_ORDER_VALUE DESC
 LIMIT 1;
 
 #3.Analyse customer retention by calculating the percentage of the repeat customers.
SELECT COUNT(*) AS Repeat_customers,
round(100*COUNT(*)/(SELECT COUNT(*) FROM customer),2) AS Repeat_customer_percentage
FROM(SELECT CUST_CODE FROM orders
GROUP BY CUST_CODE
HAVING COUNT(*)>1) AS Repeat_customers;

#4.Find the name of the customer who has the maximum outstanding amount from every country.
SELECT CUST_NAME,CUST_COUNTRY,MAX(OUTSTANDING_AMT) AS AMOUNT FROM customer
GROUP BY CUST_COUNTRY,CUST_NAME
ORDER BY AMOUNT DESC;

#5.Write a SQL query to calculate the percentage of customers in each grade category (1 to 5).
SELECT GRADE,
ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM customer), 2) AS percentage
FROM customer
GROUP BY grade
ORDER BY grade;


#SEGEMENT:- 4 AGENT PERFORMANCE ANALYSIS:

/*
#1.Company wants to provide a performance bonus to their best agents based on the maximum order amount.
 Find the top 5 agents eligible for it*/
 SELECT agents.AGENT_NAME, MAX(orders.ORD_AMOUNT) AS MAX_ORDER_AMOUNT
 FROM agents
 JOIN orders ON agents.AGENT_CODE = orders.AGENT_CODE
 GROUP BY agents.AGENT_NAME
 ORDER BY MAX_ORDER_AMOUNT DESC 
 LIMIT 5;
 
 /*
 #2.The company wants to analyse the performance of agents based on the number of orders they have handled.
 Write a SQL query to rank agents based on the total number of orders they have processed.
 Display agent_name, total_orders, and their respective ranking.*/
 SELECT agents.AGENT_NAME,
 COUNT(orders.ORD_NUM) AS TOTAL_ORDERS,
 RANK() OVER (ORDER BY COUNT(orders.ORD_NUM)DESC) AS Agent_rank 
 FROM agents
 LEFT JOIN orders 
 ON agents.AGENT_CODE = orders.AGENT_CODE
 GROUP BY agents.AGENT_NAME;
 
 /*
 #3.Company wants to change the commission for the agents, basis advance payment they collected.
 Write a sql query which creates a new column updated_commision on the basis below rules.*/
 
-- If the average advance amount collected is less than 750, there is no change in commission.
-- If the average advance amount collected is between 750 and 1000 (inclusive), the new commission will be 1.5 times the old commission.
-- If the average advance amount collected is more than 1000, the new commission will be 2 times the old commission.
ALTER TABLE agents
		ADD COLUMN updated_commission DECIMAL(10, 2) DEFAULT 0;

		SET SQL_SAFE_UPDATES = 0;

		UPDATE agents AS a
		SET updated_commission = 
			CASE
				WHEN (
					SELECT AVG(advance_amount)
					FROM orders AS o
					WHERE o.agent_code = a.agent_code
				) < 750 THEN commission
				WHEN (
					SELECT AVG(advance_amount)
					FROM orders AS o
					WHERE o.agent_code = a.agent_code
				) BETWEEN 750 AND 1000 THEN commission * 1.5
				ELSE commission * 2
			END;
SELECT * FROM agents;


#Segment 5: SQL Tasks:
/*
#1.Add a new column named avg_rcv_amt in the table customers which contains the average receive amount for every country.
 Display all columns from the customer table along with the avg_rcv_amt column in the last.*/
 ALTER TABLE customer
		ADD COLUMN avg_rcv_amt DECIMAL(12, 2);
		SET SQL_SAFE_UPDATES = 0;
		UPDATE customer AS c
		JOIN (
			SELECT CUST_COUNTRY, AVG(RECEIVE_AMT) AS avg_receive_amt
			FROM customer
			GROUP BY CUST_COUNTRY
		) AS subquery ON c.CUST_COUNTRY = subquery.CUST_COUNTRY
		SET c.avg_rcv_amt = subquery.avg_receive_amt;
        SELECT * FROM customer; 
 /*
 #2.Write a sql query to create and call a UDF named avg_amt to return the average outstanding 
 amount of the customers which are managed by a given agent. Also, call the UDF with the agent name ‘Mukesh’.*/
 SET GLOBAL log_bin_trust_function_creators = 1;
DELIMITER //
CREATE FUNCTION avg_amount(agent_name VARCHAR(40))
RETURNS INT
BEGIN
-- DECLARE agent_id VARCHAR(6);
-- DECLARE avg_outstanding DECIMAL(12, 2);
--  
-- SELECT agent_id INTO agent_id
-- FROM agents
-- WHERE agent_name = agent_name;
--   
-- SELECT AVG(outstanding_amt) INTO avg_outstanding
--  FROM customer
--   WHERE agent_code = agent_id;
--   
--  RETURN avg_outstanding;
declare output INT;
SELECT round(AVG(outstanding_amt),0) into output
FROM customer c
-- where agent_code=(select distinct agent_code from agents where agent_name='Mukesh');
join agents a on c.agent_code=a.agent_code
where a.agent_name='Mukesh';
return output;
END //
DELIMITER ;

drop function if exists avg_amount;

select * from agents; 
select * from customer;
SELECT avg_amount('Mukesh') AS average_outstanding_amount;

/*
#3.Write a sql query to create and call a subroutine called cust_detail to return all the
 details of the customer which are having the given grade. 
 Also, call the subroutine with grade 2.*/
 DELIMITER //

		CREATE PROCEDURE cust_detail(IN p_grade DECIMAL(10, 0))
		BEGIN
			SELECT *
			FROM customer
			WHERE GRADE = p_grade;
		END //

		DELIMITER ;
		-- Calling the subroutine with grade 2
		CALL cust_detail(2);
        
/*
#4.Write a stored procedure sp_name which will return the concatenated ord_num 
(comma separated) of the customer with input customer code using cursor. 
Also, write the procedure call query with cust_code ‘C00015’.*/
DELIMITER //

		CREATE PROCEDURE s_name(IN p_cust_code VARCHAR(10))
		BEGIN
			DECLARE ord_num_list VARCHAR(1000);
			DECLARE done INT DEFAULT 0;
			DECLARE v_ord_num VARCHAR(10);
			
			-- Declare the cursor for fetching ord_num based on customer code
			DECLARE cur CURSOR FOR
				SELECT ord_num
				FROM orders
				WHERE cust_code = p_cust_code;
				
			-- Declare 'NOT FOUND' handler to exit the loop
			DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
			
			-- Initialize the ord_num_list
			SET ord_num_list = '';
			
			-- Open the cursor
			OPEN cur;
			
			-- Loop through the cursor and concatenate ord_num values
			read_loop: LOOP
				FETCH cur INTO v_ord_num;
				
				IF done THEN
					LEAVE read_loop;
				END IF;
				
				-- Concatenate ord_num with comma separator
				SET ord_num_list = CONCAT_WS(',', ord_num_list, v_ord_num);
			END LOOP;
			
			-- Close the cursor
			CLOSE cur;
			
			-- Return the concatenated ord_num list
			SELECT ord_num_list AS concatenated_ord_num;
		END //

		DELIMITER ;


		-- Calling the stored procedure with cust_code 'C00015'
		CALL s_name('C00015'); 