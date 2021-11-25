### Task 4.  Database Administration


<details><summary> Part 1 </summary>

Subject area: educational institutions
Tables: educational institutions, directors, caretakers, teachers.

    sudo apt upgrade
    sudo apt install mysql-server
    sudo mysql_secure_installation
  
text
  
    sudo mysql -u root

 mysql>
  
    CREATE DATABASE Schools;
    CREATE USER 'daria'@'localhost' IDENTIFIED BY 'passwod';
    GRANT ALL PRIVILEGES ON testDB.* TO 'daria'@'localhost';
    FLUSH PRIVILEGES;
  
TEXT
  
    USE Schools;
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
</p> <img src="" width="300"> <img src="" width="300"> <img src="" width="300">

</p> 

</details>

<details><summary> Part 2 </summary>

</details>

<details><summary> Part 3 </summary>

</details>
