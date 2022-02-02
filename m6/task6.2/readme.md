### Task 6.2 Configuring DHCP, DNS servers and dynamic routing using OSPF protocol

<details><summary>Create a VM1, VM2 and VM3. Install and configure DHCP server on VM1</summary>
First, I create virtual mashines VM1, VM2 and VM3 
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.2/Screenshots6.2/1.1.jpg"></p>

Then I installed the necessary utilities on VM1

    sudo apt update && upgrade
    sudo apt install net-tools
    sudo apt-get install dnsmasq


Next I make confiurated dnsmasq in VM1

    sudo vi /etc/dnsmasq.conf

I uncommented and changed some settings

interface=enp0s8    
dhcp-range=192.168.31.50,192.168.31.150,24h  
dhcp-option=3,192.168.31.200  
dhcp-option=1,255.255.255.0

Then I do some settings in netplan

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.2/Screenshots6.2/1.2.jpg"></p>

I look at the new IP addresses of VM2 and VM3
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.2/Screenshots6.2/1.3.jpg"></p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.2/Screenshots6.2/1.4.jpg"></p>

And use ping in VM1

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.2/Screenshots6.2/1.5.jpg"></p>

</details>

<details><summary>Setting up a DNS server on VM1</summary>

I use the dnsmasq utility to configure DNS
Сhanged some settings in /etc/dnsmasq.conf

domain=daria.home  
address=/vm1/192.168.31.200  
address=/vm2/192.168.31.109  
address=/vm3/192.168.31.53

and use commands

    sudo systemctl stop systemd-resolved
    sudo systemctl disable systemd-resolved
    sudo service dnsmasq start

Use ping and nslookup commands

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.2/Screenshots6.2/1.8.jpg"></p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.2/Screenshots6.2/1.6.jpg">
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.2/Screenshots6.2/1.7.jpg"></p>
</details>

<details><summary>Install and configure DHCP server on VM1 (using VBoxManage)</summary>
The second way to configure the DHCP server I chose VBoxManage.
In command console I confired DHCP-server VirtualBox.
I use command

    VBoxManage dhcpserver add --network=inet --netmask=255.255.255.0 --lowerip=192.168.31.200 --upperip=192.168.31.254 --set-opt=3 192.168.31.200 --set-opt=6 192.168.31.200 --set-opt=15 "daria.home" --enable

Then I apply this in VM settings

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.2/Screenshots6.2/1.9.jpg"></p>

I start virtual machines and check

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.2/Screenshots6.2/2.1.jpg"></p>
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.2/Screenshots6.2/2.2.jpg"></p>
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.2/Screenshots6.2/2.3.jpg"></p>

</details>

