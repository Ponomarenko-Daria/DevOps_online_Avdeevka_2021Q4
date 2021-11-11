# Task 2.1
***

## Part 1. HYPERVISORS
1. What are the most popular hypervisors for infrastructure virtualization?
- The most popular hypervisors are VMware, Oracle VirtualBox.  


2. Briefly describe the main differences of the most popular hypervisors.

* Licensing model  
Oracle VirtualBox - it is open source software.  
VMware - 30 days trial period.
* Software and hardware virtualization  
VMware and VirtualBox - support hardware virtualization.  
VirtualBox - support programm virtualization.
* Working with operating systems  
* Host requirement  
Oracle VirtualBox is a cross-platform solution.  
VMware - is not a cross-platform solution.  
* Virtual disk formats  
VirtualBox supports - VDI, VMDK, VHD, HDD.  
VMware supports only VMDK.

***
## Part 2. WORK WITH VIRTUALBOX
<details><summary>1.Create VM1 and install Ubuntu using the instructions. Set machine name as "host machine name"_"student last name"</summary>  
</p>In main menu your can import/export/add or create new VM.  
</p>Push create button -> using the installation wizard
</details>


<details><summary>2. Clone an existing VM1 by creating a VM2. Create a group of two VM.</summary>
</p>
Groups in Virtual Box and Clone VM1 (UbuntuServer1_Ponomarenko):
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/2.jpg" width="300">
</details>

<details><summary> 3. For VM1, changing its state, take several different snapshots, forming a branched tree of snapshots </summary>
</p>
I created a snapshots tree with the different programs inside.
We can run and work with any snapshots
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/3.jpg" width="300">
</details>



<details><summary> 4.  Export VM1. Save the *.ova file to disk. Import VM from *.ova file </summary>
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/4.0.png" width="700">
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/4.1.jpg" width="500">
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/4.2.jpg" width="500">
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/4.3.jpg" width="500">
</p> <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/4.4.jpg" width="500">
</details>



<details><summary> 5. Configure the USB to connect the USB ports of the host machine to the VM.</summary>
</p>
First, we need to add a USB device via the Virtual Box GUI.
</p>
Then we have to identify our device among others
</p>
After that, we need creade directory and mount flash drive on it.
</p>

    lsusb
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/5.0.jpg" width="500">   
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/5.1.jpg" width="500">  

    sudo mkdir /mnt/usb
    sudo mount /dev/sdb1 /mnt/usb  
    
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/5.2.jpg" width="500"></p> 

    cd /mnt/usb  
    
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/5.3.jpg" width="500"> 
</details>



<details><summary> 6. Configure a shared folder to exchange data between the virtual machine and 
the host</summary>
</p>
The creation of a shared folder is divided into 2 stages:</p>
1. Setting up VB (add a shared folder and give it a name)</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/6.0.jpg" width="500"></p>
2. Setting up the system (Installing software from a virtual disk, creating a folder, mounting a shared folder in it)
CLI command:
</p>

    sudo mount /dev/cdrom /media/cdrom
    sudo apt-get update
    sudo apt-get install build-essential linux-headers-`uname -r`
    sudo /media/cdrom/./VBoxLinuxAdditions.run
    sudo shutdown -r now
    mkdir /share
    sudo mount -t vboxsf shared /home/daria/sharedfolder/
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/6.1.jpg" width="500">

    sudo nano sharedfile.txt
    cat sharedfile.txt
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/6.3.jpg" width="500"></p>
</p>
Screensots of new file from host PC, edited file from VB, open edit file from host PC.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/6.4.jpg" width="500">
</details>



<details><summary> 7. Examine the purpose and execute the basic commands of VBoxManage. </summary>
</p>
showvminfo:
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/8.0%20showinfo.jpg" width="600">
</p>
createvm:
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/8.1%20createvm.jpg" width="500">
</p>
startvm:
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/8.2%20startvm.jpg" width="500">
</p>
modifyvm:
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/Comandline.png" width="500">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/Changes.png" width="500">
</p>
clonevm:
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/CloneVM_CLI.png" width="500">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/CloneVM_GUI.jpg" width="500">
</p>
snapshot:
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/Snapshot_CLI.jpg" width="500">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/Snapshot_GUI.jpg" width="500">
</p>
controlvm:
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.1/Screenshots/ControlVM_CLI.jpg" width="500">
</p>
</details>

***

## PART 3. WORK WITH VAGRANT

<details><summary> Basic CLI commands for working with Vagrant </summary>

    vagrant init
    vagrant up
    ssh to vagant VM
    vagrant halt and destroy

</details>

<details><summary> Create my box </summary>
</p>First we need to initialize and run the existing box
</p>Then we need to connect to it and configure it as we like
</p>Finally, you need to save the box.

    vagrant init
    vagrant up
    ssh vagrant@127.0.0.1 -p 2222
    
    sudo apt update
    sudo apt upgrade
    sudo apt install docker.io
    exit
    
    vagrant package --output Serdiuk.box
    vagrant box add ubuntuBox Serdiuk.box

</details>

***

