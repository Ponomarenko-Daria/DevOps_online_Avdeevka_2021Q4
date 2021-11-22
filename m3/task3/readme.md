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
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.2.jpg" width="400">
</p>
Checked the connection using the ping command.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.3.jpg" width="400">
</p>
Server1 (WebServer 1) - 2.96.20.50 /24
</p>  
Server2 (WebServer 2) - 2.96.20.100 /24
</p>
Server3 (DNS Server) - 2.96.20.150 /24
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.4.jpg" width="400">
</p>  
Checked the connection using the ping command.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.5.jpg" width="400">
</p> 
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.3.jpg" width="400">
</p> 
On Client3, I replaced the Ethernet network adapter with a Wi-FI adapter and assigned a static address.
</p> 
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.6.jpg" width="400">
</p> 
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.7.jpg" width="400">
</p> 
Checked the connection using the ping command.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/1.8.jpg" width="400">
</p> 
</details>

<details><summary>Task 3.2. Connections of individual networks using the Internet. </summary>
</p>
I combine the creation of a network in Task 3.1 with each other. I add 3 PT-Empty routers, inserting 5 1CGE modules into them.
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

<details><summary>Task 3.2. VLAN settings in the Data Center. Configure routing between VLANs. </summary>
</p>
Switch 1 (Data Center):
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/vlansw.jpg" width="400">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/2.4.jpg" width="400">
</p>
Trunk:
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/2.6.jpg" width="200">
</p>
Scheme task 3.2
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/scheme3.2.jpg" width="2000">
</p>
</details>

<details><summary>Task 3.3. Configuring Routing.</summary>
</p>
Configuring Routing (ISP):
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/3.2.jpg" width="400">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/3.3.jpg" width="400">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/3.4.jpg" width="400">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/ISP1.jpg" width="300">
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/ISP2.jpg" width="300">
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/ISP3.jpg" width="300">
</p>
Configuring routing to Home Router:
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/3.1.jpg" width="500">
</p>
Scheme task 3.3
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/scheme3.3.jpg" width="2000">
</p>
</details>

<details><summary>Task 3.4. DHCP, DNS, NAT settings. </summary>
1. Configure DHCP Server on an Enterprise Network. Make DHCP Pool settings:
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/4.1.jpg" width="500">
</p>
2. Checked the connection using the ping command.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/4.2.jpg" width="500">
</p>
3.Then I set up DHCP on the Home Router.
Then I configure the DNS service.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/4.5.jpg" width="500">
</p>
4. Checked the connection using the ping command.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/4.6.jpg" width="300">
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/4.7.jpg" width="300">
</p>
</details>

<details><summary>Task 3.4. Configuring Port Forwarding on the Home Router (optional). </summary>
1. I add the Home Office Home Server to the network and assign it a static address.
Next, on the Home Server for the HTTP service, I edit index.html:
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/5.1.jpg" width="500">
</p>
2. I set up Port Forwarding on the Home Router and add a record for the Home Server to the DNS Server:
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/5.2.jpg" width="500">
</p>
Scheme task 3.4
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m3/task3/ScreanshotsTask3/scheme3.4.jpg" width="2000">
</p>
</details>
