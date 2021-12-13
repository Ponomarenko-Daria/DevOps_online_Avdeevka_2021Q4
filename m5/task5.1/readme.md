### Task 5.1


<details><summary> Part 1 </summary>
1. First, to log in as a root user, I used the sudo su command.
</p> 
2. Further, to change the password, use the passwd <username> command, in my case root. 
</p>
3. The cat / etc / passwd command shows all users registered in the system. 
Here the following information will be given: username, password, id, group id, group, home directory, shell. The password is displayed by X.
</p>
4.
</p>
5. The Linux help system, represented by the man command, is short for manual.
This command has its own sections with information. To get information on a specific command, type man a space followed by the command name, for example:

    man passwd
    
The man command can also search using keys. For example, the -k switch performs a keyword search, for example:

    man -k passwd
As a result of the executed command, we will get a list of man pages on which the word "passwd" is found. </p>
The info command is an alternative to the man command. To find out information on a specific command, you need to enter info space and the name of the command.

    info man



There is also a help command. It displays help about shell built-in commands. </p>   
6. The more and less commands are used to view the contents of text files. 
 </p> 
The more command displays the contents of a file on the screen in separate pages that span the entire screen. To see the next page press the spacebar.
To exit view mode, press q.
</p>
The less command contains the same functionality as more, but also has additional functionality.
</p>
7.
</p>
8.
</p>
</details>

<details><summary> Part 2 </summary>
1. The tree command displays a hierarchical structure of directories graphically. Has many options and is very useful. </p>
Here are some examples of how to use this command.
We execute the command: 

    tree
And we get:
</p><img src=""></p>
To see even hidden files and directories, run the command:

    tree -a
And we get:
</p><img src=""></p>
You can also display only those directories and files that have a specific character or sequence of characters.

    tree -P c*
If necessary, you can also select which level of the folder or subfolder to display.

    tree -L 2
and

    tree -L 1
And we get:
</p><img src=""></p>
2.
</p>
3.
</p>
4.
</p>
5.
</p>
6.
</p>
7.
</p>
8.
</p>
9.
</p>
10.
</p>
11.
</p>
12.
</p>
13.
</p>
14.
</p>
15.
</p>
</details>

