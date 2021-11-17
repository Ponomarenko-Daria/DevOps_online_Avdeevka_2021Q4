# Task 2.2 Virtualization and Cloud Basic
***

<details><summary>1.  Create your own VM in the AWS cloud and connect to it. </summary>
</p>
First, I created an Amazon Linux instance in Lightsail and configured it. 
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/1.1.jpg" width="250">
</p>
Then I connected to it in Lightsail
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/1.2.jpg" width="250">
</p>
</details>

<details><summary>2.  Launch another Linux Virtual Machine without Amazon Lightsail (with EC2). </summary>
</p>
With the help of the setup wizard, I created an EC2 machine and connected to it with putty.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/2.1.jpg" width="400">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/2.2.jpg" width="400">
</p>
</details>

<details><summary>3.  Create a snapshot of your instance to keep as a backup. </summary>
</p>
EC2 console - > EBS -> Snapshot - > Setup wizard
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/3.1.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/3.2.jpg" width="700">
</p>
</details>

<details><summary>4.   Create and attach a Disk_D (EBS) to your instance to add more storage space. Create 
and save some file on Disk_D. </summary>
</p>
EC2 console - > EBS - > Volumes - > Create volume - > Setup wizard
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/4.1.jpg" width="700">
</p>
After creation, we need to attach the new volume to your instance EC2.
<p>
Then in the system, we need to set the file system, create the folder and mount the new disk to the folder.
<p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/4.2.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/4.3.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/4.4.jpg" width="700">
</p>
</details>

<details><summary>5.  Launch the third instance from backup. Detach Disk_D from the 2nd instance and attach disk_D to the new instance. </summary>
</p>
I create an instance from my snapshot.
In EBS I detach the volume from 1st instance and attach it to 2nd.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/5.1.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/5.2.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/5.3.jpg" width="700">
</p>
</details>

<details><summary>6.  Launch and configure a WordPress instance with Amazon Lightsail. </summary>
</p>
Using setup wizard we create a WordPress instance. Then we create a new elastic IP address and attach it to the WP instance.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/6.1.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/6.2.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/6.3.jpg" width="700">
</p>
</details>

<details><summary>7.  Creating your own S3 bucket. </summary>
</p>
AWS - > S3 - > Create bucket - >Setup wizard
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/7.1.jpg" width="400">
</p>
Then we add files to the new bucket.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/7.2.jpg" width="600">
</p>
</details>

<details><summary>8.  Create a user AWS IAM, configure CLI AWS and upload any files to S3. </summary>
</p>
At first, we need in AWS console we need to create a new user. 
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/8.1.jpg" width="400">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/8.2.jpg" width="400">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/8.3.jpg" width="400">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/8.4.jpg" width="400">
</p>
Then we upload AWS CLI, installing and configuring it with new credentials.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/8.5.jpg" width="400">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/8.6.jpg" width="400">
</p>
Then we can upload, download and delete files from CLI.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/8.7.jpg" width="400">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/8.9.jpg" width="400">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/8.9.0.jpg" width="400">
</p>
</details>

<details><summary>9.  Explore the possibilities of creating your own domain 
and domain name for your site. </summary>
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/13.1.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/13.2.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/13.3.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/13.4.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/13.5.jpg" width="700">
</p>
</details>

<details><summary>10.  Deploy Docker Containers on Amazon Elastic 
Container Service. </summary>
I install docker into my EC2 instance. Then install programs into the container. After that, I packed a new container and push it into ECS.
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/14.1.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/14.2.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/14.3.jpg" width="700">
</p>
</details>

<details><summary>11.  Create a static website on Amazon S3. </summary>
</p>
1. Create a new domain name daria-ponomarenko.pp.ua on site nic.ua. </p>
2. Create 2 new buckets with the names "daria-ponomarenko.pp.ua" and "www.daria-ponomarenko.pp.ua". </p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/15.1.jpg" width="700">
</p>
3. Set up bucket daria-ponomarenko.pp.ua like a static website and www.daria-ponomarenko.pp.ua like a router to daria-ponomarenko.pp.ua. </p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/15.2.jpg" width="700">
</p>
4. Create zone "daria-ponomarenko.pp.ua" on service Route53 with the name "daria-ponomarenko.pp.ua". </p>
5. Add 2 records with the names "daria-ponomarenko.pp.ua" and "www.daria-ponomarenko.pp.ua" to my route53 record.</p>
6. Set up "daria-ponomarenko.pp.ua" to redirect bucket "daria-ponomarenko.pp.ua" and record "www.daria-ponomarenko.pp.ua" to bucket "www.daria-ponomarenko.pp.ua". 
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/15.3.jpg" width="700">
</p>
<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m2/task2.2/ScreenshotTask2.2/15.jpg" width="700">
</p>
</details>

***
