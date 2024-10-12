# Banking
This repository contains an SQL script to create and manage a banking system database. The database includes entities such as banks, branches, customers, account details, loans, and their relationships. The goal is to effectively manage banking data, including customer accounts, loans, and branch information.
The database consists of the following key tables:

1. **Bank**: Stores details of the banks such as the bank name, code, and address.
2. **Branch**: Contains information about the branches of banks, linked to the `Bank` table through a foreign key.
3. **Customer**: Stores customer details including name, phone number, and address.
4. **Accountdetails**: Stores information about the customer’s bank accounts, including account type, balance, and associated branch.
5. **Loan**: Stores information about loans such as loan type, amount, and branch.
6. **Loan_Customer**: A relationship table that connects loans to the customers who took them.
7. **Account_Customer**: A relationship table that connects bank accounts to the customers who own them.

### Relationships

- **Bank** and **Branch** tables have a one-to-many relationship, where a bank can have multiple branches.
- **Customer** is linked to **Accountdetails** and **Loan** via the **Account_Customer** and **Loan_Customer** tables, representing many-to-many relationships between customers, accounts, and loans.
- **Branch** is linked to both **Accountdetails** and **Loan**, as each account and loan is associated with a specific branch.

## SQL Queries

This repository includes SQL queries to create, insert, and retrieve data for the banking system. These queries include:

- **Creating Tables**: Defines the structure of the tables with primary and foreign keys to establish relationships.
- **Inserting Data**: Inserts sample data into the tables for banks, branches, customers, accounts, and loans.
- **Retrieving Data**: Queries to fetch data from the tables for analysis and operations.

### Example Data

- **Banks**: The script inserts two banks, “First National Bank” (FNB) and “Global Trust Bank” (GTB).
- **Branches**: Two branches are created for each bank.
- **Customers**: The script inserts sample data for two customers, John Doe and Jane Smith.
- **Accounts**: Sample accounts for each customer are created with account types (Savings, Checking) and balances.
- **Loans**: Two loans (Home Loan, Car Loan) are inserted for the customers.

### Sample Queries

You can use the following queries to explore the data in the database:

```sql
-- Query all banks
SELECT * FROM Bank;

-- Query all branches
SELECT * FROM Branch;

-- Query all customers
SELECT * FROM Customer;

-- Query all account details
SELECT * FROM Accountdetails;

-- Query all loans
SELECT * FROM Loan;

-- Query customer loan relationships
SELECT * FROM Loan_Customer;

-- Query customer account relationships
SELECT * FROM Account_Customer;
