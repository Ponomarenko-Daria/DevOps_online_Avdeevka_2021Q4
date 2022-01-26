### Task 5.1


<details><summary> Part 1 </summary>
1. First, to log in as a root user, I used the sudo su command.
</p> 
2. Further, to change the password, use the passwd <username> command, in my case root. 
</p>
3. The cat / etc / passwd command shows all users registered in the system. 
Here the following information will be given: username, password, id, group id, group, home directory, shell. The password is displayed by X.
</p>
4. In order to change information about myself, I used the following commands:

        chfn daria

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P1.4.1.jpg">
</p>
5. The Linux help system, represented by the man command, is short for manual.
This command has its own sections with information. To get information on a specific command, type man a space followed by the command name, for example:

    man passwd
    
The man command can also search using keys. For example, the -k switch performs a keyword search, for example:

    man -k passwd
As a result of the executed command, we will get a list of man pages on which the word "passwd" is found. </p>
The info command is an alternative to the man command. To find out information on a specific command, you need to enter info space and the name of the command.

    info man

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P1.4.jpg"></p>

There is also a help command. It displays help about shell built-in commands. </p>   

6. The more and less commands are used to view the contents of text files. 
 </p> 
The more command displays the contents of a file on the screen in separate pages that span the entire screen. To see the next page press the spacebar.
To exit view mode, press q.
</p>
The less command contains the same functionality as more, but also has additional functionality.
</p>

7. I created .plan in the home directory "daria".  

        vi .plan
        finger daria

<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P1.7.1.jpg">
</p>
</details>

<details><summary> Part 2 </summary>
    
1. The tree command displays a hierarchical structure of directories graphically. Has many options and is very useful. </p>
Here are some examples of how to use this command.
We execute the command: 

    tree
And we get:
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.1.1.jpg"></p>
To see even hidden files and directories, run the command:

    tree -a
And we get:
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.1.3.jpg"></p>
You can also display only those directories and files that have a specific character or sequence of characters.

    tree -P c*

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.1.4.jpg"></p>

If necessary, you can also select which level of the folder or subfolder to display.

    tree -L 2
and

    tree -L 1
And we get:
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.1.5.jpg"></p>

2. The "file" command is used to determine the type of file. 
This command has various experiences that can be viewed using command:

        man file
        
</p>
3. There are three commands for navigating the terminal and their different options are ls, cd and pwd.
The pwd command is extremely simple and just shows you the directory you are in.
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.3.1.jpg"></p>
The most commonly used navigation command is cd. </p>
To go to the required directory, use cd path/to/directory.  

The command cd with no arguments will return us in our home dirictory.  

To move from the current directory, we specify these characters at the beginning of the argument cd ./daria/test. 
</p>

One of the simplest and most useful commands is ls command.
With command allows you to view the contants of a directory, permissions of a file or directory, who owns the directory or file, and more.  
The standard output of the command shows all directories and files in the directory we are in.
</p>

4. Using different keys, the ls command provides us with different information.  
Ls command options:  
-m  - output content separated by commas;  
-r  - reverse information output;  
-s  - sort by file size;  
-x  - sort the output alphabetically;  
-t  - sort by time of creation / last modification of the file.
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.4.1.jpg"></p>
-l  - long output format;  
-a  - shows all files and folders including hidden ones;  
-R  - display the contents of the current directory, and if there are subdirectories, then the contents of this directory.
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.4.2.jpg">
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.4.3.jpg"></p>


5. I created a subdirectory SubDir , and in it the file info.txt.  
In the SubDir subdirectory, I created a file containing information about the directories, located in the root directory.
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.5.1.jpg"></p>
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screensots5.1/P2.5.2.jpg"></p>

I copied the generated file to my home directory.
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.5.3.jpg"></p>
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.5.4.jpg"></p>
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.5.5.jpg"></p>
Next, I delete the SubDir subdirectory I created earlier.  

Deleted the files copied to the home directory.
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.5.6.jpg"></p>


6.
I create a test subdirectory in my home directory and copy the .bash_history file into this directory and change its name to labwork2.

        mkdir test
        sudo cp ~/bash_history test/labwork2
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.6.1.jpg"></p>
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.6.2.jpg"></p>
I create a soft link:

        ln -s labwork2 softlink
        sudo cat softlink
        
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.6.3.jpg"></p> 

        sudo ln labwork2 hardlink
        sudo cat hardlink
        
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.6.4.jpg"></p> 

With the ls -li command, you can see that the softlink is indeed a link.
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.6.5.jpg"></p>    

A soft link contains the address of the desired file in the file system. When you try to open such a link, the target file or folder opens.  

When the target file is deleted, the link will remain, but will point to nowhere.

</p>
Hard links
The file is located in a specific location on the hard drive. But this place can be referenced by several links from the file system.  

Each of the links is a separate file, but they lead to the same area of the hard drive.  

The file can be moved between directories, and all links will remain working, because the name is not important for them.
</p>

When I change a file through a soft link, changes occur in the file itself.
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.6.6.jpg"></p> 
Replaced soft and hard link names according to the assignment. Deleted the target file.
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.6.7.jpg"></p> 
The soft link can no longer open the file, throws an error because the file has been deleted. A hard link can still open the file. This is due to the peculiarities of hard and soft links.
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.6.8.jpg"></p> 
</p>

7.
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.7.1.jpg"></p> 
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.7.2.jpg"></p> 
</p>


8. To view mounted drives, I used the command:

        df -h

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.8.1.jpg"></p> 

To view type:

        file /dev/root

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.8.2.jpg"></p> 
</p>


9. To find the number of lines with the required sequence of characters, I used the following combination of commands:

        cat tmp | grep "sys"
        cat tmp | grep "sys" | wc -l
        
</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.9.1.jpg"></p>
</p>

10. Using the find command, I found all files in the /etc directory containing the "host" sequence

        sudo find /etc -type f -iname "*host*"

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.10.1.jpg"></p>
</p>

11. To search for all objects that contain the character sequence "ss" I used the command:

        sudo find /etc -name  "*ss*"

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.11.1.jpg"></p>
Next, I duplicated the command and added the grep command:

        sudo find /etc | grep -c "ss"
        sudo find /etc | grep "ss"

</p><img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.11.2.jpg"></p>
</p>

12. <img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.12.1.jpg">
</p>

13. There are 4 types of devices:
- Character Device - these devices transfer data, but one a character at a time. You'll see a lot of pseudo devices (/dev/null) as character devices, these devices aren't really physically connected to the machine, but they allow the operating system greater functionality.
- Block Device - these devices transfer data, but in large fixed-sized blocks. You'll most commonly see devices that utilize data blocks as block devices, such as harddrives, filesystems, etc.
- Pipe Device - named pipes allow two or more processes to communicate with each other, these are similar to character devices, but instead of having output sent to a device, it's sent to another process.
- Socket Device - socket devices facilitate communication between processes, similar to pipe devices but they can communicate with many processes at once.  

        ls -l /dev

<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.13.1.jpg">
</p>

14. To view the type of all files in the current directory:

        file *

To view the type of a specific file:

        file [Namefile]

<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.14.1.jpg"></p>

In Linux, files are divided mainly into three parts:
- regular files;
- directory files;
- special files.

 In UNIX, seven standard file types are regular, directory, symbolic link, FIFO special, block special, character special, and socket. 
</p>

15. 
        ls -alt /etc
        ls -alt /etc " head -6

<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.15.1.jpg">
</p>

        ls -altr /etc
        ls -altr /etc | tail -6

<img src="https://github.com/Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4/blob/master/m5/Screenshots5.1/P2.15.2.jpg">
</p>
</details>

