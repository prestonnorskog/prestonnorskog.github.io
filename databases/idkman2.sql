SELECT GuestID, GuestFirstName, GuestLastName, Address, 
    City, StateProv, PostalCode, Country, Phone
FROM tblGuest
WHERE Country = 'USA' ORDER BY GuestLastName;

SELECT GuestID, GuestFirstName, GuestLastName, Address, 
    City, StateProv, PostalCode, Country, Phone
FROM tblGuest
WHERE GuestID = 209;

UPDATE tblGuest
SET GuestLastName = 'Norskog'
WHERE GuestID = 209;

SELECT * FROM tblproperty
WHERE NightlyRate < 2000;

SELECT 
    MIN(NightlyRate) AS MinimumRate,
    MAX(NightlyRate) AS MaximumRate,
    AVG(NightlyRate) AS AverageRate
FROM 
    tblProperty;

SELECT 
    tblReservation.ReservationID, 
    tblReservation.GuestID, 
    tblReservation.PropertyID, 
    round(tblProperty.NightlyRate * DATEDIFF(tblReservation.EndDate, tblReservation.StartDate) / tblReservation.People) AS CostPerPerson
FROM tblReservation JOIN tblProperty 
	ON tblReservation.PropertyID = tblProperty.PropertyID
	WHERE tblReservation.People > 0; -- Avoid division by zero
    
SELECT COUNT(PropertyID) AS TotalProperties FROM tblProperty;

SELECT COUNT(DISTINCT StateProv) AS DistinctStates FROM tblGuest;

CREATE TABLE Propertybackup AS SELECT * FROM tblProperty WHERE Sleeps > 10;

INSERT INTO Propertybackup SELECT * FROM tblProperty WHERE Sleeps <= 10;


