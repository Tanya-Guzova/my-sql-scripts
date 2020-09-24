/* DB and Station Table are not Provided - that is Just a Sample Code to Solve the Case Below:

Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
The STATION table is described as follows:

Station.jpg
*/
select Distinct City
from Station
where ID % 2 = 0;