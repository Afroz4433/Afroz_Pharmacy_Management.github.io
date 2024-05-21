
--Using Database bidar
use bidar

-- Create Table Table Name is Admin_Medicine
create table Admin_Medicine(id int primary key identity(50,5), name varchar(100),gender varchar(50), email varchar(100), password varchar(100))

-- Create Table Teble Name is Seller_Medicine
create table Seller_Medicine (id int primary key identity(50,5), name varchar(100), gender varchar(50), email varchar(100), password varchar(100), address varchar(100));

--Inserted some Values in Admin_Medicine Teble
insert into Admin_Medicine values('Venkat', 'Male', 'admin@gmail.com', 'admin123');

-- Inserted some values in Seller_Medicine table
insert into Seller_Medicine values('Shankar', 'Male','seller@gmail.com', 'seller123', 'Ameerpet-500016');

--With these query we can Display the Tables
select * from Admin_Medicine

select * from Seller_Medicine

-- using Ulter we can Modify the atble
alter table Seller_Medicine add address varchar(100)

--Created Medicine table for Storing medicine
create table Medicine_M(code varchar(100)primary key, name varchar(100), cost money, quantity int, date varchar(100), category varchar(50));

--Adding some medicine in the medicine tbale
insert into Medicine_M values('E120', 'Paramcetamol', '50', 100, '10/02/2025', 'Tablet')
insert into Medicine_M values('E123', 'Alment', '90', 50, '14/07/2024', 'Tablet')

--Now Stored Procedure
--Create StoredProcedure for Inserting Medicine for Medicine table
create proc pro_Insert_Medicine(@a varchar(100), @b varchar(100), @c money, @d int, @e varchar(100), @f varchar(50))
as begin
	insert into Medicine_M values (@a, @b, @c, @d, @e, @f)
end;

--Create Stored Procedure to Update Medicine table
create proc pro_Update_Medicine(@a varchar(100), @b varchar(100), @c money, @d int, @e varchar(100), @f varchar(50))
as begin
	update Medicine_M set name=@b, cost=@c, quantity=@d, date=@e, category=@f where code=@a
end;

--Query for selecting values less then 50
select * from Medicine_M where quantity <=50;

-- Create StoredProcedure to Register Admin For Admin_Table
create proc pro_Admin_Register(@a varchar(100), @b varchar(50), @c varchar(100), @d varchar(100))
as begin
	insert into Admin_Medicine values (@a, @b, @c, @d)
end;

--Create Stored Procedure to det seller details for Seller_Table
create proc pro_GetSeller_Medicine
as begin
	select * from Seller_Medicine
end;

-- Create Stored Procedure to Seller_register for Seller_Medicine Table 
create proc pro_Seller_Register(@a varchar(100), @b varchar(50), @c varchar(100), @d varchar(100), @e varchar(100))
as begin
	insert into Seller_Medicine values (@a, @b, @c, @d, @e)
end;

--create stored Procedure to Update Seller details for Seller_Medine Table
create proc pro_Seller_Update(@a varchar(100), @b varchar(50), @c varchar(100), @d varchar(100), @e varchar(100))
as begin
	update Seller_Medicine set gender=@b,  email=@c, password=@d, address=@e where name=@a
end;

--Create Stord Procedure to delete Seller Details for Seller_Medicine Table
create proc pro_Delete_Seller_Medicine(@a varchar(100))
as begin
	delete from Seller_Medicine where name=@a
end;

--Create Stored Procudre To Login Seller fro Seller_Medicine Table
create proc pro_SellerLogin_Medicine1(@a varchar(100), @b varchar(100))
as begin
	select count(*) from Seller_Medicine where email= ''+@a+'' and password=''+@b+''
end

--Create Stored Procedure to Get Medicine  where medicine lessthen 50
create proc pro_Get_Medicine
as begin
	select * from Medicine_M where quantity<=50
end;

-- certe stord procrdure  to get mediciene
create proc pro_Get_Medicine_M
as begin
	select * from Medicine_M
end;

-- crete storedprocedure for delete medicine from medine table
create proc pro_Delete_Medicine_M(@a varchar(100))
as begin
	delete from Medicine_M where code=@a
end;

--Created Medine_Bill table to get bill
create table Medicine_Bill(name varchar(100), cost money, quantity int, date varchar(100))

--create procedure for Adding Medicine to bill for Medicine_Bill table
create proc pro_Add_Medicine_Bill(@a varchar(100), @b money, @c int, @d varchar(100))
as begin
	insert into Medicine_Bill values(@a, @b, @c, @d)
end;

----Create procedure to delete Medicine in medicine bill table
create proc pro_Delete_Medicine_Bill(@a varchar(100))
as begin
	delete from Medicine_Bill where name=@a;
end;

select * from Medicine_Bill

