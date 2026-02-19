create table Sales(
SaleID int primary key,
SaleDate date ,
ProductID references Product(ProductID),
UserID references Username( UserID),
SalePrice int 
)

create table Product(
ProductID int primary key,
ProductName varchar ,
ProductPrice int 
)

create table Username(
UserID int primary key ,
UserName varchar 
)

create table Users(
UserID
SignupDate
)

create table GoldUsers_Signup(
GoldUserID
UserID
SignupDate
)