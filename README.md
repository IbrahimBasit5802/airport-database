<h1 align="center">Welcome to Airport Database System 👋</h1>
## ✨ Project Description

A small private airport database that is used to keep track
of airplanes, their owners, airport employees, and pilots.

<h2> ERD </h2>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/q1%20and%20RelationalSchema/AirplaneDatabaseSystem_ERD.png?raw=true)

<h3> ERD EXPLANATION </h3>

<p> This entity relationship diagram has 8 entities with numerous relationship between them. The airplane entity stores information about the airplanes of the airport. One airplane can be stored at at most one hangar while a hangar may house multiple planes if its capacity allows. Airplanes are identified by their unique Registration Number and is owned by either a coorporation or a person. Both the coorporation and person entities are subtypes of the Owner with an OwnerID to uniquely identify them. Moreover, each coorpration is uniquely identified by their name and person from their SSN. Pilot and Employee entitites inherit from the Person class. Both Employee and Pilot entities have a multi-valued attribute to signify what they are authorized to fly and work on. Each airplane can undergo maintainence and hence a weak entity of service records exists with identifying relationships like maintaines and serviced. Lastly, an airplane_type entity stores information about the models of the planes.</p>

<h2> Relational Schema </h2>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/q1%20and%20RelationalSchema/AirplaneDatabaseSystem_RelationalSchema.png?raw=true)



<h3> Question 2 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q2_1_code.png?raw=true)
![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q2_2_code.png?raw=true)
![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q2_3_code.png?raw=true)
![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q2_4_code.png?raw=true)

<h3> Question 2 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q2_output.png?raw=true)

<h3> Question 2 Explanation </h3>

<p> Table creation and insertion of values into created tables according to ERD </p>

<h3> Question 3 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q3_code.png?raw=true)

<h3> Question 3 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q3_output.png?raw=true)

<h3> Question 3 Explanation </h3>

<p> This SQL query retrieves all the registration numbers of airplanes that do not have any service records associated with them.  </p>

<h3> Question 4 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q4_code.png?raw=true)

<h3> Question 4 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q4_output.png?raw=true)

<h3> Question 4 Explanation </h3>

<p> The query uses a subquery to select all corporation IDs from the ownerr table that own at least one airplane of the required type. It does so by selecting the owner IDs from the airplane table where the airplane type matches a subquery that selects the model numbers from the airplane_type table where the capacity is over 200. </p>

<h3> Question 5 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q5_code.png?raw=true)

<h3> Question 5 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q5_output.png?raw=true)

<h3> Question 5 Explanation </h3>

<p> The query uses the avg() function to calculate the average salary of employees in the emp table who have a shifttime value of 'evening'. It uses the WHERE clause to filter out all other employees who do not work in the evening shift. </p>

<h3> Question 6 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q6_code.png?raw=true)

<h3> Question 6 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q6_output.png?raw=true)

<h3> Question 6 Explanation </h3>

<p> The query uses a subquery to select the top 6 employee IDs from the servicerecords table with the highest number of maintenance hours worked. </p>

<h3> Question 7 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q7_code.png?raw=true)

<h3> Question 7 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q7_output.png?raw=true)

<h3> Question 7 Explanation </h3>

<p> The query uses an INNER JOIN to combine the AIRPLANE and SERVICERECORDS tables based on the registration number column. This creates a result set that includes all airplanes and their corresponding service records. </p>

<h3> Question 8 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q8_code.png?raw=true)

<h3> Question 8 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q8_output.png?raw=true)

<h3> Question 8 Explanation </h3>

<p> This query retrieves a list of airplane owners ID, names, and phone numbers who have owned airplanes within the last month. The data is obtained by joining the AIRPLANE, OWNER, and PERSON tables and applying a date filter. The DISTINCT keyword is used to remove duplicate values from the output. </p>

<h3> Question 9 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q9_code.png?raw=true)

<h3> Question 9 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q9_output.png?raw=true)

<h3> Question 9 Explanation </h3>

<p> This query retrieves a list of pilots license numbers and the number of unique authorized planes each pilot can fly, based on the restrictions listed in the Pilot_Restr table. The data is obtained by joining the PILOT and Pilot_Restr tables, grouping the results by license number, and counting the number of distinct restriction values for each pilot. The output is then sorted in ascending order by license number. </p>

<h3> Question 10 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q10_code.png?raw=true)

<h3> Question 10 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q10_output.png?raw=true)

<h3> Question 10 Explanation </h3>

<p> the query retrieves the location and capacity of the hangar with the largest capacity in the hangar table. The output is obtained by sorting the table in descending order of capacity and selecting the top row, which represents the hangar with the highest capacity. </p>

<h3> Question 11 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q11_code.png?raw=true)

<h3> Question 11 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q11_output.png?raw=true)

<h3> Question 11 Explanation </h3>

<p> This query retrieves a list of corporations and the number of planes each corporation owns, based on the data in the COORPORATIONS, OWNERR, and AIRPLANE tables. The data is obtained by joining the tables, grouping the results by corporation name, and counting the number of distinct airplanes associated with each corporation. The output is then sorted in descending order of the number of planes. </p>

<h3> Question 12 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q12_code.png?raw=true)

<h3> Question 12 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q12_output.png?raw=true)

<h3> Question 12 Explanation </h3>

<p> This query retrieves a list of airplane models and the average number of maintenance hours for each model, based on data from the AIRPLANE_TYPE, AIRPLANE, and SERVICERECORDS tables. The data is obtained by joining the tables, grouping the results by airplane model, and calculating the average of the maintenance hours recorded in the SERVICERECORDS table for each airplane model. The output is then sorted in descending order of the average number of maintenance hours. </p>

<h3> Question 13 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q13_code.png?raw=true)

<h3> Question 13 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q13_output.png?raw=true)

<h3> Question 13 Explanation </h3>

<p> This query retrieves a list of names of airplane owners whose airplanes require maintenance but have no available mechanic to work on them. The data is obtained by joining multiple tables and filtering the output to exclude cases where the airplanes are unable to get serviced due to no available employees that can work on them. </p>

<h3> Question 14 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q14_code.png?raw=true)

<h3> Question 14 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q14_output.png?raw=true)

<h3> Question 14 Explanation </h3>

<p> This query retrieves a list of owner names and addresses for both individual and corporate owners by joining the OWNERR, PERSON, and CORPORATIONS tables. It then uses a case statement to select the appropriate name and address columns based on the owner type column value. Finally, it filters the output to exclude any rows where both the PERSON.NAME and CORPORATIONS.CNAME columns are null. </p>

<h3> Question 15 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q15_code.png?raw=true)

<h3> Question 15 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q15_output.png?raw=true)

<h3> Question 15 Explanation </h3>

<p> This query retrieves the license numbers of pilots who have worked on planes with restricted service records on the current date. It does so by joining the PILOT, PILOT_RESTR, and SERVICERECORDS tables and filtering the output based on the current date. Finally, it selects the license numbers from the PILOT table. </p>

<h3> Question 16 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q16_code.png?raw=true)

<h3> Question 16 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q16_output.png?raw=true)

<h3> Question 16 Explanation </h3>

<p> This query retrieves the total number of hours worked by employees of Acme Corp on all planes that they have serviced. It does so by joining the EMP, SERVICERECORDS, AIRPLANE, OWNER, and COORPORATIONS tables and filtering the result set to only include rows where the value of COORPORATIONS.CNAME is equal to Acme Corp. Finally, it groups the output by employee and computes the total number of hours worked by each employee. </p>

<h3> Question 17 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q17_code.png?raw=true)

<h3> Question 17 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q17_output.png?raw=true)

<h3> Question 17 Explanation </h3>

<p> This query selects the name and registration number of airplanes that is owned by a person and if it hasn't been serviced by morning shift employees </p>

<h3> Question 18 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q18_code.png?raw=true)

<h3> Question 18 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q18_output.png?raw=true)

<h3> Question 18 Explanation </h3>

<p> This query retrieves a list of owner names and addresses for both individual and corporate owners by joining the OWNER, PERSON, and CORPORATIONS tables. It then uses a case statement to select the appropriate name and address columns based on the owner type column value. Finally, it filters the output to exclude any rows where both the PERSON.NAME and CORPORATIONS.CNAME columns are null. </p>

<h3> Question 19 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q19_code.png?raw=true)

<h3> Question 19 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q19_output.png?raw=true)

<h3> Question 19 Explanation </h3>

<p> This query selects the hangar ID and the total number of planes stored in each hangar. It starts with selecting the hangar ID and counting the number of planes that are stored in each hangar. The join is done with the LEFT JOIN keyword which ensures that all hangars are included in the result set. The GROUP BY clause groups the output by the hangar ID. </p>

<h3> Question 20 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q20_code.png?raw=true)

<h3> Question 20 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q20_output.png?raw=true)

<h3> Question 20 Explanation </h3>

<p> This query groups the airplanes in the airplane table by their type and counts the number of planes for each type. </p>

<h3> Question 21 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q21_code.png?raw=true)

<h3> Question 21 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q21_output.png?raw=true)

<h3> Question 21 Explanation </h3>

<p> This query will return the total number of services performed on each airplane using count function </p>

<h3> Question 22 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q22_code.png?raw=true)

<h3> Question 22 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q22_output.png?raw=true)

<h3> Question 22 Explanation </h3>

<p> This query retrieves the shift time and calculates the avg of MOrning and Evening Employees using the AVG function. </p>

<h3> Question 23 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q23_code.png?raw=true)

<h3> Question 23 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q23_output.png?raw=true)

<h3> Question 23 Explanation </h3>

<p> This query uses an inner join on the AIRPLANE and OWNER tables to get the owner ID of each airplane, and then left joins with the PERSON and COORPORATIONS tables to get the name of the owner based on their ID. The CASE statement is used to handle cases where the owner is an individual or a corporation. Then the output is grouped by the owner name using another CASE statement and the COUNT function is used to get the total number of planes owned by each owner. </p>

<h3> Question 24 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q24_code.png?raw=true)

<h3> Question 24 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q24_output.png?raw=true)

<h3> Question 24 Explanation </h3>

<p> This query selects the pilot license number and the count of distinct planes that the pilot is authorized to fly. It joins the tables PILOT and PILOT_RESTR on the LICNUM and PID columns, respectively, and groups the result by LICNUM. The output is then ordered by LICNUM </p>

<h3> Question 25 Query 1 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q25_1_code.png?raw=true)

<h3> Question 25 Query 1 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q25_1_output.png?raw=true)

<h3> Question 25 Query 1 Explanation </h3>

<p> This query retrieves the total number of employees in each shift. It uses the EMP table to group employees by their shift time and count the number of employees in each shift. </p>

<h3> Question 25 Query 2 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q25_2_code.png?raw=true)

<h3> Question 25 Query 2 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q25_2_output.png?raw=true)

<h3> Question 25 Query 2 Explanation </h3>

<p> This query retrieves the airplane that has undergone the most maintenance. It uses the AIRPLANE and SERVICERECORDS tables to join the number of maintenance services with the airplane type and group by the airplane type. Then, it sorts the output in descending order and returns the top 5 airplane types with the highest number of maintenance services. </p>

<h3> Question 25 Query 3 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q25_3_code.png?raw=true)

<h3> Question 25 Query 3 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q25_3_output.png?raw=true)

<h3> Question 25 Query 3 Explanation </h3>

<p> This query retrieves the total weight of all airplanes owned by each corporation. It uses the AIRPLANE_TYPE, AIRPLANE, and OWNER tables to join airplane weight with the airplane model number, and then joins the airplane owner with their corporation ID. Then, it groups the results by corporation ID and calculates the sum of the airplane weights for each corporation. </p>

<h3> Question 25 Query 4 Code </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q25_4_code.png?raw=true)

<h3> Question 25 Query 4 Output </h3>

![alt text](https://github.com/IbrahimBasit5802/airport-database/blob/main/images/q25_4_output.png?raw=true)

<h3> Question 25 Query 4 Explanation </h3>

<p> This query calculates the number of owners that are persons and corporations. It uses the OWNER and COORPORATIONS tables to join the owner type with the person or corporation ID. Then, it groups the output by the owner type and calculates the count of persons, corporations, and total number of owners. It also uses left join to include all records from the OWNER table, even if there is no match in the COORPORATIONS table. </p>
