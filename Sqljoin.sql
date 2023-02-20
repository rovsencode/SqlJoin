use p326
CREATE TABLE Countries(
    Id int primary key identity,
    Name NVARCHAR(50),
    Population DECIMAL(18,2),
    Area DECIMAL(18,2)
)
CREATE TABLE Cities(
    Id int primary key identity,
    Name NVARCHAR(50),
    Population DECIMAL(18,2),
    Area DECIMAL(18,2),
    CountryId int REFERENCES Countries(Id),
)


-- SELECT * FROM Countries
 --SELECT * FROM Cities c 
 --Join Countries cn
 --ON

 --c.CountryId=cn.Id


SELECT c.Name 'CityName', c.Population 'CityPopulation', c.Area ,cn.Name 'CountyName'  FROM Cities c
Join Countries cn
ON
c.CountryId=cn.Id

where c.Area BETWEEN 2 AND 3






SELECT c.Name 'CityName', c.Population 'CityPopulation', c.Area ,cn.Name 'CountyName'  FROM Cities c
Left Join Countries cn
ON
c.CountryId=cn.Id





SELECT c.Name 'CityName', c.Population 'CityPopulation', c.Area ,cn.Name 'CountyName'  FROM Cities c
Right Join Countries cn
ON
c.CountryId=cn.Id




SELECT c.Name 'CityName', c.Population 'CityPopulation', c.Area ,cn.Name 'CountyName'  FROM Cities c
Full Join Countries cn
ON
c.CountryId=cn.Id







CREATE TABLE Positions (
    Id int primary key identity,
    Name nvarchar(50),
    DependId int,
)


SELECT p.Name 'PositionName', p1.Name 'DependName' FROM Positions p, Positions p1
WHERE p.DependId=p1.Id



CREATE TABLE Products (
    Id int primary key identity,
    Name nvarchar(50)
)


CREATE TABLE Size (
    Id int primary key identity,
    Name nvarchar(50)
)





SELECT p.Name 'ProductName', s.Name 'ProductSize'   FROM Products p
CROSS JOIN
Size s

