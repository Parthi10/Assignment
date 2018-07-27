/*create UserDetails table*/

CREATE TABLE UserDetails(
   UserID   INT AUTO_INCREMENT PRIMARY KEY,
   NAME VARCHAR (20) ,
   City  VARCHAR (20) ,
   State  VARCHAR (25) ,
   Country VARCHAR (20),
SocialSecurityNumber VARCHAR (20),
CreatedAt DATE ,
UpdatedAt DATE ,
   PRIMARY KEY (UserID)
);
/*create AddressDetails table*/

CREATE TABLE AddressDetails(
   UserID   INT AUTO_INCREMENT PRIMARY KEY,
   Address VARCHAR (50) ,
   Mobile  VARCHAR (20) ,
CreatedAt DATE ,
UpdatedAt DATE ,
FOREIGN KEY (UserID) REFERENCES UserDetails(UserID)
   );
/*Random insert for UserDetails table*/
Declare @UserID int
Declare @CreatedAt date
Declare @UpdatedAt date
Set @CreatedAt = '1/1/2008'
Set @UpdatedAt = '10/1/2008'
Set @UserID = 1

While @UserID <= 100
Begin 
   Insert Into UserDetails values ('Name - ' + CAST(@UserID as nvarchar(10)),
   'City - ' + CAST(@UserID as nvarchar(10)),'State - ' + CAST(@UserID as nvarchar(10)),'Country - ' + CAST(@UserID as nvarchar(10)),
   'Securitynumber - ' + CAST(@UserID as nvarchar(10)), 'CreatedAt - ' + CAST(@CreatedAt as Date), 'UpdatedAt - ' + CAST(@UpdatedAt as Date))

   Print @UserID
   Print @CreatedAt
   Print @UpdatedAt
   Set @UserID = @UserID + 1
   set @mobile = @Mobile + 1
   set @CreatedAt = @CreatedAt + '01/01/0001'
   set @UpdatedAt = @UpdatedAt + '01/01/0001'
End

/*Random insert for AddressDetails table*/
Declare @UserID int
Declare @Mobile int
Declare @CreatedAt date
Declare @UpdatedAt date
Set @CreatedAt = '1/1/2008'
Set @UpdatedAt = '10/1/2008'
Set @UserID = 1
set @Mobile = 9876543210

While @UserID <= 100
Begin 
   Insert Into AddressDetails values ('Address - ' + CAST(@UserID as nvarchar(10)),
   'Mobile - ' + CAST(@Mobile as nvarchar(10)), 'CreatedAt - ' + CAST(@CreatedAt as Date), 'UpdatedAt - ' + CAST(@UpdatedAt as Date))

   Print @UserID
   Print @Mobile
   Print @CreatedAt
   Print @UpdatedAt
   Set @UserID = @UserID + 1
   set @mobile = @Mobile + 1
   set @CreatedAt = @CreatedAt + '01/01/0001'
   set @UpdatedAt = @UpdatedAt + '01/01/0001'
End
/* auto generate*/
mysqldump -u root -h localhost -pmypassword faqs | gzip -9 > faqs-db.sql.gz
 
