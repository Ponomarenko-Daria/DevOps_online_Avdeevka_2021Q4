### Task 4.  Database Administration


<details><summary> Part 1 </summary>
    1. First, I download MySQL-Server.
    
    sudo apt upgrade
    sudo apt install mysql-server
    sudo mysql_secure_installation

</p>

2. Subject area: Schools.
    Tables: Schools, City, District, HeadTeacher.
    I go to MySQL-Serever under the user daria. I create a database and in it I create tables.
    
        sudo mysql -u daria

        mysql>
        CREATE DATABASE Schools;
        CREATE USER 'daria'@'localhost' IDENTIFIED BY '***';
        GRANT ALL PRIVILEGES ON testDB.* TO 'daria'@'localhost';
        FLUSH PRIVILEGES;  
        USE Schools;
    
    
 3. I fill tables with data for further work with them.

        mysql> CREATE TABLE City (
        -> id_city char(3), 
        -> name_city varchar(50), 
        -> primary key(id_sity));
  
        mysql> CREATE TABLE District (
        -> id_dist char(3), 
        -> name_dist varchar(30), 
        -> primary key(id_dist));
  
        mysql> CREATE TABLE HeadTeacher (
        -> ht_id int,
        -> surname varchar(15),
        -> name varchar(15),
        -> phone char(13),
        -> primary key (ht_id)
        -> );
  
        mysql> CREATE TABLE Schools (
        -> sch_id int,
        -> number varchar(3),
        -> id_city char(3),
        -> id_dist char(3),
        -> address varchar(50),
        -> phone char(13),
        -> ht_id int,
        -> primary key (sch_id),
        -> foreign key (id_city) references City(id_city),
        -> foreign key (id_dist) references District(id_dist),
        -> foreign key (ht_id) references HeadTeacher(ht_id)
        -> );
    
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part1.1.jpg" width="500"> </p>
 
4. I create and execute an operator SELECT
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part1.2.jpg" width="500"> </p>
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part1.3.jpg" width="500"> </p>
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part1.4.jpg" width="500"> </p>
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part1.5.jpg" width="500"> </p>

5. SQL queries DDL, DML, DCL.

 DDL - Data Definition Language: CREATE, ALTER, DROP.
 DML – Data Manipulation Language: SELECT, INSERT, UPDATE, DELETE.
 DCL – Data Control Language: GRANT, REVOKE, DENY.
 
6. I create a database  of new user with different privileges. Connect to the database.
First, I creat a new user daria2.
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part1.6.jpg" width="500"> </p>

Then I use the permissive privileges.
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part1.7.jpg" width="500"> </p>
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part1.8.jpg" width="500"> </p>

And testing another priveleges.
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part1.9.jpg" width="500"> </p>
If there are insufficient privileges, an error is thrown.
</details>

<details><summary> Part 2 </summary>
1. I make backup of my database.
    
    mysqldump -u root -p Schools > backup.sql
    
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part2.1.jpg" width="700"> </p>

 And then I make some change on my database.
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part2.2.jpg" width="300"> </p> 

Restoring a database from backup.
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part2.3.jpg" width="500"> </p> 

2.Transfer my local database to RDS AWS.  
Connect to my database.
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part2.4.jpg" width="500"> </p> 
</details>

<details><summary> Part 3 </summary>
    1. I create an Amazon DynamoDB table.
    </p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part3.1.jpg" width="500"> </p> 
    Then I add items in my table.
    </p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part3.2.jpg" width="500"> </p> 
    Query an Amazon DynamoDB table using Query and Scan.
    </p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m4/Screenshots4/part3.3.jpg" width="500"> </p> 
</details>
