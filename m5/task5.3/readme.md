### Task 5.3

<details><summary>Part 1</summary>

1. There are four Linux process states. They are as follows: running & runnable, sleep, stopped, and zombie.   
- Runinng & runnable process state - the process is either running or ready to run.
- Sleep process state - the process is waiting for some to occur or system resources to be allocated. There are two types of these processes:
    - interruptible waiting processes;
    - uninterrupted waiting processes.

- Stopped process state - the process has been stopped.

- Zombie process state - sometimes, when the parent process is killed before the child process terminates, the child processes become orphaned, with the init process assigned as the new parent.
</p>

2. Examine the pstree command. Make output (highlight) the chain (ancestors) of the current process.  
Syntax:

        pstree [OPTIONS] [UserName or PID]

<img src="1.1"></p>  
Selected the chain of ancestors of the current process:
<img src="1.2"></p>

3. The /proc filesystem is a virtual filesystem. It does not take up disk space. Its main task is to obtain the state of the system and partially perform control actions.
</p>

4. We can display information about the CPU using the commands

        lscpu
    and

        cat /proc/cpuinfo

    <img src="1.3"></p>
    <img src="1.4"></p>
</p>

5. 
    <img src="1.5"></p>
</p>

6. Kernel processes are displayed using the command:

        ps --ppid=2 --pid=2
    <img src="1.6"></p>
    To display user processes, I use the command:

        ps -N --ppid=2 --pid=2
    <img src="1.7"></p>
</p>

</details>

7. To display all processes on the screen, use the command:

        ps -aux

<img src="2.1"></p>

- R - the process is running or ready to run (ready state)
- D - process in a "dreamless sleep" - waiting for disk I/O
- T - the process is stopped (stopped) or traced by the debugger
- S - the process is in a state of waiting (sleeping)
- Z - zombie process
- < - process with negative nice value
- N is a process with a positive nice value 
</p>

8. If you need to see the processes performed by a specific user, use the command:

        ps U <UserName>

    For example:

        ps U ubuntu
<img src="1.8"></p>
</p>

9. Looking at the help for the ps command, we can see that commands such as pgrep, pstree, top and proc can also be used.

<img src="2.2"></p>

</p>

10. The top command allows you to display information about the system, as well as a list of processes, dynamically updating information about the resources they consume.
</p>

11. To display processes running on behalf of a specific user, use the command:

        top -u ubuntu
<img src="1.9"></p>
</p>

 12. To control the TOP utility, we can use interactive commands while working with it, so here are some examples:

- h - output help on the utility;
- q or Esc - exit from top;
- A - choice of color scheme;
- d or s - change the interval for updating information;
- H - output process flows;
- k - send a termination signal to the process;
- W - write the current program settings to the configuration file;
- Y - view additional information about the process, open files, ports, logs, etc.;
- Z - change color scheme;
- l - hide or display information about the average load on the system;
- m - turn off or switch the mode of displaying information about the memory;
- x - bold the column by which sorting is performed;
- y - bold processes that are currently running;
- z - switching between color and single color modes;
- c - switching the command output mode, the full path and only the command are available;
- F - setting fields with information about processes;
- o - filtering processes by an arbitrary condition;
- u - filtering processes by username;
- V - display of processes in the form of a tree;
- i - switching the display mode of processes that are not currently using processor resources;
- n - the maximum number of processes to display in the program;
- L - search by word;
- <> - moving the sort field to the right and left;

</p>

 13. To sort the output, use the following command:

        ps -ef --sort [sortcolumns]

For example:
<img src="2.3"></p>
<img src="2.4"></p>
<img src="2.5"></p>
<img src="2.6"></p>
</p>

14. Each process in the system is assigned a certain priority, which is taken into account by the process scheduler when allocating processor time to the process. The priority value ranges from -20 (highest priority) to 19 (lowest: the process only runs when there are no other CPU time contenders). The reciprocal value of priority is called the indicator of compliance (nice).  
By default, all processes start with a base priority of 0. The owner of a process can raise its compliance score (lower priority) at any time. The superuser has the right to set any priority value for any process.  
nice - set priority for launched process;
Syntax:

        nice -nice_value command-arguments

    Example: 

        nice -5 wget https://wordpress.org/latest.zip
</p>

 15. We can change the priority of a process using the top command with the r key.

We use the top command, then press the r key and change the desired values.  

<img src="2.7"></p>

</p>

 16. By executing the kill command, a signal is sent to the system indicating the incorrect operation of the application.
To view all signals, use the command:

    kill -l

<img src="2.8"></p>

To send a signal to a process (or group of processes), you can use the kill command in the following form:

    kill -signal PID[PID..]

</p>

 17. 
 - jobs - allows to see what commands is in our session;
- fg - let to bring command from background to foreground;
- bg - allows to push command from foreground to background;
- nohup - let to save started process after a closing terminal session.
</p>

<details><summary>Part 2</summary>

 1. 

</p>

 2. 

</p>

 3. 

</p>

 4. 

</p>

 5. 

</p>
</details>

1. Check the implementability of the most frequently used OPENSSH commands in the MS 
Windows operating system. (Description of the expected result of the commands + 
screenshots: command – result should be presented)
2. Implement basic SSH settings to increase the security of the client-server connection (at least 
3. List the options for choosing keys for encryption in SSH. Implement 3 of them.
4. Implement port forwarding for the SSH client from the host machine to the guest Linux 
virtual machine behind NAT.
5. Intercept (capture) traffic (tcpdump, wireshark) while authorizing the remote client on the 
server using ssh, telnet, rlogin. Analyze the result