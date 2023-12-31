CREATE DATABASE SQL_1_WORK;

USE SQL_1_WORK;

CREATE TABLE SALES (
    purchase_number INT AUTO_INCREMENT,
    Date_of_purchase DATE NOT NULL,
    Customer_id INT,
    item_code VARCHAR(255) NOT NULL,
    PRIMARY KEY (purchase_number)
);

ALTER TABLE SALES
ADD FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id) ON DELETE CASCADE;

ALTER TABLE SALES 
DROP FOREIGN KEY sales_ibfk_1;


CREATE TABLE CUSTOMERS (
    CUSTOMER_id INT AUTO_INCREMENT,
    FIRST_NAME VARCHAR(255),
    LAST_NAME VARCHAR(255),
    EMAIL_ADDRESS CHAR(255),
    NUMBER_OF_COMPLAINTS INT,
    PRIMARY KEY (CUSTOMER_ID),
    UNIQUE KEY (EMAIL_ADDRESS)
);
  
  USE SQL_1_WORK;
  
  ALTER TABLE CUSTOMERS 
  CHANGE COLUMN NUMBER_OF_COMPLAINTS NUMBER_OF_COMPLAINTS INT DEFAULT 0;
  
  INSERT INTO CUSTOMERS (FIRST_NAME , LAST_NAME)
  VALUES ('PETER','FIGARO');
  
  SELECT* FROM CUSTOMERS;
  
  CREATE TABLE Companies (
    company_id INT AUTO_INCREMENT,
    headquaters_phone_number VARCHAR(300),
    company_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (company_id)
);
     
/* 
section 8 data manipulation
*/

  
  
  
  
  
  
  
  

  

  


 
