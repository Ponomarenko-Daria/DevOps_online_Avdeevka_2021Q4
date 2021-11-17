# Task 3 Networking Fundamentals

<details><summary>Task 3.1. Create a network. </summary>
</p>
Created networks according to the assignment.  
</p>
Assigned static addresses generated according to the specified rules:
</p>
PC0 (Client 1) - 10.96.20.10 /24
</p>
PC1 (Client 2) -10.96.20.20 /24
</p>
PC2 (Client 3) - 192.168.0.30 /24
</p>
Server0 (DHCP Server) - 10.96.20.100 /24
</p>
Checked the connection using the ping command.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.1.jpg" width="400">
</p>
Server1 (WebServer 1) - 2.96.20.50 /24
</p>  
Server2 (WebServer 2) - 2.96.20.100 /24
</p>
Server3 (DNS Server) - 2.96.20.150 /24
</p>  
Checked the connection using the ping command.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.2.jpg" width="400">
</p> 
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.3.jpg" width="400">
</p> 
On Client1, I replaced the Ethernet network adapter with a Wi-FI adapter and assigned a static address.
</p> 
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.4.jpg" width="400">
</p> 
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.5.jpg" width="400">
</p> 
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.6.jpg" width="400">
</p>
Checked the connection using the ping command.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.7.jpg" width="400">
</p> 
</details>

<details><summary>Task 3.2. Connections of individual networks using the Internet. </summary>
</p>
I combine the creation of a network in Task 3.1 with each other. I add 3 PT-Empty routers, inserting 5 1CGE modules into them.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/2.1.jpg" width="400">
</p> 
Router settings:
</p>
ISP 1:
</p>GE0/0 - 10.96.20.1/24
</p>GE1/0 - 30.2.96.1/26
</p>GE2/0 - 30.2.96.65/26
</p>
ISP 2:
</p>GE0/0 - 30.2.96.193/26
</p>GE1/0 - 30.2.96.2/26
</p>GE3/0 - 30.2.96.129/26
</p>
ISP 3:
</p>GE0/0 - 2.20.96.1/24
</p>GE2/0 - 30.2.96.66/26
</p>GE3/0 - 30.2.96.130/26
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/2.2.jpg" width="400">
</p> 
</details>

<details><summary>Task 3.2. VLAN settings in the Data Center. </summary>
</p>
Switch 1 (Data Center):
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/2.3.jpg" width="400">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/2.4.jpg" width="400">
</p>
Scheme task 3.2
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/Task3.2.jpg" width="2000">
</p>
</details>

<details><summary>Task 3.3 </summary>
</details>

<details><summary>Task 3.4 </summary>
</details>
