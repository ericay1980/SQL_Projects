
/*Construct database to store and manage sales records and construct 3 tables*/
/*Create primary keys*/

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS stylecarz_db.salesperson;
DROP TABLE IF EXISTS stylecarz_db.customers;
DROP TABLE IF EXISTS stylecarz_db.orders;

CREATE TABLE stylecarz_db.salesperson(
	salesperson_id Int NOT NULL Primary Key, 
	salesperson_city Varchar (8) NOT NULL, 
	commission_rate Int NOT NULL
    );
    
CREATE TABLE stylecarz_db.customers(
	customer_id Int NOT NULL Primary Key, 
    c_firstname Varchar (7) NOT NULL, 
	c_lastname Varchar (7) NOT NULL, 
	c_city Varchar (7) NOT NULL, 
	C_rating Int NOT NULL
    );
    
CREATE TABLE stylecarz_db.orders(
	order_id Int NOT NULL Primary Key, 
    salesperson_id Int NOT NULL,
    customer_id Int NOT NULL,
	FOREIGN KEY (salesperson_id) REFERENCES stylecarz_db.salesperson(salesperson_id), 
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    );
