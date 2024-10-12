create database Banking;

use banking;

CREATE TABLE Bank (
    BankID INT PRIMARY KEY,
    Name VARCHAR(100),
    Code VARCHAR(10),
    Address VARCHAR(255)
);


CREATE TABLE Branch (
    BranchID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    BankID INT,
    FOREIGN KEY (BankID) REFERENCES Bank(BankID)
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255)
);


CREATE TABLE accountdetails (
    AccountNo INT PRIMARY KEY,
    AccountType VARCHAR(50),
    Balance DECIMAL(15, 2),
    BranchID INT,
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);


CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    LoanType VARCHAR(50),
    Amount DECIMAL(15, 2),
    BranchID INT,
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);


CREATE TABLE Loan_Customer (
    LoanID INT,
    CustomerID INT,
    PRIMARY KEY (LoanID, CustomerID),
    FOREIGN KEY (LoanID) REFERENCES Loan(LoanID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);



select *
from Bank;

INSERT INTO Bank (BankID, Name, Code, Address)
VALUES 
(1, 'First National Bank', 'FNB', '123 Main St, New York, NY'),
(2, 'Global Trust Bank', 'GTB', '456 Market St, Los Angeles, CA');

select *
from Bank;

INSERT INTO Branch (BranchID, Name, Address, BankID)
VALUES
(1, 'FNB - Downtown Branch', '789 Center St, New York, NY', 1),
(2, 'GTB - West Coast Branch', '123 Elm St, Los Angeles, CA', 2);

select *
from Branch;

INSERT INTO Customer (CustomerID, Name, Phone, Address)
VALUES 
(1, 'John Doe', '123-456-7890', '1001 Pine St, New York, NY'),
(2, 'Jane Smith', '987-654-3210', '2001 Oak St, Los Angeles, CA');


select *
from customer;

INSERT INTO Accountdetails (AccountNo, AccountType, Balance, BranchID)
VALUES 
(101, 'Savings', 5000.75, 1),
(102, 'Checking', 2000.50, 2);

INSERT INTO Loan (LoanID, LoanType, Amount, BranchID)
VALUES 
(1, 'Home Loan', 250000, 1),
(2, 'Car Loan', 15000, 2);

select *
from loan;

INSERT INTO Loan_Customer (LoanID, CustomerID)
VALUES 
(1, 1), 
(2, 2);
 
select *
from loan_customer;

CREATE TABLE Account_Customer (
    AccountNo INT,
    CustomerID INT,
    PRIMARY KEY (AccountNo, CustomerID),
    FOREIGN KEY (AccountNo) REFERENCES Accountdetails(AccountNo),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

INSERT INTO Account_Customer (AccountNo, CustomerID)
VALUES 
(101, 1),
(102, 2);


select *
from Account_customer;
