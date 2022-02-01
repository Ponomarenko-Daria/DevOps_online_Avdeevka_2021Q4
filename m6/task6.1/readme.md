### Task 6.1 Networking with Linux


First, I create virtual mashines VM1 and VM2.
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.1/Screenshots6.1/1.1.jpg"></p>
VM1 has 2 interfases (NAT and internal), VM2 has 1 interfase (internal)
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/Screenshots6.1/1.2.jpg"></p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.1/Screenshots6.1/1.3.jpg"></p>

        sudo vi /etc/netplan/00-installer-config.yaml
        sudo netplan apply
        
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.1/Screenshots6.1/1.4.jpg"><p>        

To set priority use:

    sudo apt-get install ifmetric
    sudo ifmetric enp0s3 50
    sudo ifmetric enp0s8 100

Then change 0 -> 1

    sudo vi /proc/sys/net/ipv4/ip_forward


Next I uncommeted the line

    sudo /etc/sysctl.conf

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.1/Screenshots6.1/1.5.jpg"></p>

And execute command:

    sudo iptables-save

Next I add the table NAT to the POSTROUTING policy

    sudo iptables -t nat -A POSTROUTING -s 192.168.31.0/24 -o enp0s3 -j MASQUERADE

Check the access to the Internet, (just ping, for example, 8.8.8.8).
Make ping 8.8.8.8 on VM2
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.1/Screenshots6.1/1.6.jpg"></p>

Determine, which resource has an IP address 8.8.8.8 and determine, which IP address belongs to resource epam.com.

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.1/Screenshots6.1/1.7.jpg"></p>

Determine the default gateway for your HOST and display routing table.

    route -n

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.1/Screenshots6.1/1.8.jpg"></p>

Trace the route to google.com.

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m6/task6.1/Screenshots6.1/1.9.jpg"></p>
