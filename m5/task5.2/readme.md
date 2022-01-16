### Task 5.2

<details><summary>1. Analyze the structure of the /etc/passwd and /etc/group file, what fields are 
present in it, what users exist on the system? Specify several pseudo-users, how 
to define them? </summary>
The /etc/passwd file structure consists of:

* registration name; 
* encrypted password; 
* user identifier;  
* default group identifier; 
* personal data field; 
* home directory; 
*command interpreter.
</p>
Example:
</p>
<img src=""></p>
Groups are defined in the / etc / group file  

The /etc/group file structure:

- group name;
- encrypted password;
- group identifier;
- list of members.
</p>
Example:
</p>
<img src=""></p>
</p>
To see a list of all users, you need to enter the command

    cat /etc/passwd

</p>
</details>

<details><summary>2. What are the uid ranges? What is UID? How to define it?</summary>
UID (User ID) is a unique number assigned to each user. Used to identify a user in the system and determine which system resources the user has access to.  
</p>
  UID values in the range 0 to 99 are statically allocated by the system, while UIDs in the range 100 to 499 are reserved for dynamic allocation by system administrators and post-installation scripts.
  There are also special ranges:
  60001-60513: UID for home directories managed by systemd -homed
  61184-65519 (0xef00-0xffef): UID for dynamic users.
  </p>
  </details>
  
  
<details><summary>3. What is GID? How to define it?</summary>
GID (Group ID) - the group identifier is used to organize access for several users to some resources. 
  </p>
  The user must belong at least to the default group.
  The id command is used to find the group ID.
  
      id
     
 <img src=""></p>
 </p>
 You can determine the group ID of a specific user using the command:
 
    id -g {UserNameHere}

You can find out all the groups to which a user belongs using the command:

    id -G {UserNameHere}
    
 </p>
  </details>
  
<details><summary>4. How to determine belonging of user to the specific group?</summary>
You can see which groups a user belongs to using the id or groups / command.  

For example:
<img src=""></p>
</p>
 </details>

<details><summary>5. What are the commands for adding a user to the system? What are the basic 
parameters required to create a user?</summary>
To create a user, use the command: useradd [OPTIONS] UserName.  

For example:
  
      sudo useradd USERNAME;
      
 </p>
 Basic parameters when creating a user:
 
 * -b - base directory for placing the user's home directory, /home by default;
 * -d - home directory where the user's files will be placed;
 * -e - date when the user account will be blocked, in YYYY-MM-DD format;
 * -c - account comment;
 * -f - block the account immediately after creation;
 * -g - user's primary group;
 * -G - list of additional groups;
 * -k - directory with configuration file templates;
 * -m - create the user's home directory if it does not exist;
 * -M - do not create a home folder;
 * -N - do not create a group with a username;
 * -o - allow creation of a linux user with a non-unique UID;
 * -p - set user password;
 * -u - identifier for the user;
 * -D - display options that are used by default to create a user. If you specify another parameter along with this option, its default value will be overridden.
 </details>


<details><summary>6. How do I change the name (account name) of an existing user?</summary>
To change the name of an existing user, you first need to log out of the account whose name we will be changing.  

Also, when changing the username, the group, home directory and UID will remain the same.  

The command syntax looks like this:

    $ usermod -l new_username old_username
    
 For example:
 
    sudo usermod -l daria kolya
    
 In this example, we are changing the existing username kolya to daria.
 </p></p>
 </details>

<details><summary>7. What is skell_dir? What is its structure?</summary>
The /etc/skel/ directory is used to start the home directory when a user is first created.  

An example of the "skeletons" layout of user files:

 </p><img src=""></p>
 
 </p><img src=""></p>
 
  </details> 
  
<details><summary>8. How to remove a user from the system (including his mailbox)?</summary>
Deleting a user is done using the deluser command. Command syntax:
 
    $ deluser [OPTIONS] UserName;
    
 The deluser command settings are located in the /etc/deluser.conf file.  
 
 Among the many settings there is indicated what to do with the home folder and files.  
 
 You can view and change these settings as follows:
 
     vi /etc/deluser.conf
     
 There are the following settings:
 
* REMOVE_HOME - remove the user's home directory
* REMOVE_ALL_FILES - remove all user files
* BACKUP - back up user files
* BACKUP_TO - backup folder
* ONLY_IF_EMPTY - remove the user's group if it is empty.
 </p>
 
 These options are also supported. They are similar to the settings, but have more options:
 * --system - delete only if this is a system user
 * --backup - make a backup copy of the user's files
 * --backup-to - folder for backups
 * --remove-home - remove home folder
 * --remove-all-files - remove all user files in the file system
 </p>
  You can also use the userdel utility to delete a user, it works a little differently.  
  
  Syntax:
  
      $ userdel [OPTIONS] UserName
      
* -f, --force - force deletion, even if the user is still logged in.
* -r, --remove - remove the user's home directory and files on the system.
* -Z Delete all SELinux objects for this user.
</p>
The best way to remove a user from the server is to use the advanced method.

1) Deny the user access to the system and prohibit the launch of new processes.

    passwd --lock losst
    
 2) We complete all processes running on behalf of the user.
 
    pgrep -u losst
    
 3) If necessary, make a backup.
 
     tar jcvf /user-backups/losst-backup.tar.bz2 /home/losst

 4) Delete the user account.
 For Debian
 
     deluser --remove-home losst
     
 For Red Hat
 
    userdel --remove losst
    
 If you want to delete all files owned by a user on the system:
 
    deluser --remove-all-files losst
  </details>   
 
<details><summary>9. What commands and keys should be used to lock and unlock a user account?</summary>
The first way is achieved with the passwd command.  

- To lock use the -l or --lock option:
 
    passwd -l user_name
    
- To unlock a user using the passwd command, use the -u or --unlock option:

    passwd -l user_name
    
Second way
You can also lock and unlock a user using the usermod command.  

- In order to block a user, use the -L option:

    usermod -L user_name
    
- In order to unblock a user, use the -U option:

    usermod -U user_name
    
    
 The usermod command works on the /etc/passwd file so that a blocked user can still log in via SSH keys.  
 
 There are various ways to solve this problem.  
 
 For example, you can change the user's shell to nologin. This will prevent the user from entering the shell.  
 
 Another way is to block the user and provide an expiration date in the past. It works like this, it disables the account on the past date and then locks it.  
 
 It is important to make sure that the past date is between 1970-01-02 and the current date.
 
    usermod -L --expiredate 1970-01-02 user_name
 

This can be undone with the command:

    usermod -U --expiredate ''user_name

 
 The third way to lock and unlock a user is using the chage command.  
 
 - Block user:
 
    chage -E 1 username
    
 - Unblock user:
 
    chage -E -1 username
    
 Passwd -S user_name is used to check user status
  </details>
  
 <details><summary>10. How to remove a user's password and provide him with a password-free 
login for subsequent password change? </summary>
The passwd command is used to change the password.  

For the root user:

    sudo passwd

For another user:  

Log in as root, type passwd followed by the username whose password you want to change.

    passwd username 
    
  </details>
  
 <details><summary>11. Display the extended format of information about the directory, tell about 
the information columns displayed on the terminal.</summary>
The extended directory information format is ls -l.  

There is such information
</p>
<img src=""></p>
In the first column, the first character is the file object type, such as directory (d), followed by permissions.  

The second column indicates the number of hard links to the file.  

Next, the names of the owner, group, size, last modified date and file name.

  </details>
  
   <details><summary>12. What access rights exist and for whom (i. e., describe the main roles)? 
Briefly describe the acronym for access rights.</summary>


Basic file permissions.
- Read - allows you to view the contents of the file, but not to write.
- Write - allows you to write new data to a file or change existing ones, and also allows you to create and modify files and directories.
- Execution - It is not possible to execute a program if it does not have the execution flag. This attribute is set for all programs and scripts so that the system understands that this file needs to be run as a program.  


Main three roles:
- Owner - a set of rights for the user who created the file or the owner set for this file. Usually has all the rights.
- Group - any user group that exists in the system and is associated with the file. But it can only be one group.
- (Other) The rest are all users, except for the owner and users who are members of the file's group.

Special file permissions  

In order to be able to use programs by users on behalf of the superuser without his knowledge, such a thing as the SUID and SGID bits was invented.
- SUID - if this bit is set, then when the program is executed, the identifier of the user from which it was launched is replaced by the identifier of the owner of the file. notice that this allows normal users to run programs as root;
- SGID - this flag works similarly, only differs in that the user is considered a member of the group with which the file is associated, and not the group, it actually applies to items. If the SGID is set on a directory, all files created in it will be covered with the directory's group, not the user. This behavior is used for favorite folders;
- Sticky-bit - This bit is also used to create very large folders. If set, users can only create, read, and run files, but cannot delete files owned by other users.
  </details>
  
   <details><summary>13. What is the sequence of defining the relationship between the file and the 
user?</summary>

In order to find out the rights to the file, we execute the following command ls -l .
For file permissions in linux, dashes are responsible here. 
The first is the file type, which is discussed in a separate article. 
Then there are groups of rights, first for the owner, for the group and for everyone else.
Only nine dashes for rights and one for type.

The meaning of the conditional values of the permission flags:
- --- - no permissions;
- --x - only execution of the program is allowed;
- -w- - only writing and modifying the file is allowed;
- -wx - allowed to change and execute. if it is a directory, the contents cannot be viewed;
- r-- - read-only permission;
- r-x - read-only and execute;
- rw- - read and write only;
- rwx - all permissions;
- --s - SUID or SGID bit is set, the first is displayed in the field for the owner, the second for the group;
- --t - sticky-bit is set, which means users cannot delete this file.
  </details>
  
   <details><summary>14. What commands are used to change the owner of a file (directory), as well 
as the mode of access to the file? Give examples, demonstrate on the terminal.</summary>
You can use the chown command to change the owner of a directory (file).
Change of owner only:
</p><img src=""></p>
Change owner and group:
</p><img src=""></p>
To change permissions, I used the chmod command.
 </p><img src=""></p> 
  </details>
  
   <details><summary>15. What is an example of octal representation of access rights? Describe the 
umask command.</summary>
</p>
An example of an octal value:  

-rwxr--rw- 746  

-rwxr-xr-x 755  

Some permissions only make sense in combination with others.  

For example, chmod 444 [namefile] - everyone has read-only access.  

umask command  

The umask command sets the permissions mask for new files and directories.  

When creating a new file, the system requires a rights mask. On its basis, the mask is calculated. The default mask is 0002.  

It turns out that the mask contains the rights that will not be set for the file. For example, 666-002=664.  

You cannot allow the execution of files using a mask!  

Syntax:

    umask [OPTIONS] octal mask

Utility options.
- -p - output the umask command, which, when executed, will set the current mask in octal form;
- -S - display the default permissions for the folder in the format u=rwx, g=rwx, o=rwx calculated by the current mask.
  </details>
  
   <details><summary>16. Give definitions of sticky bits and mechanism of identifier substitution. Give 
an example of files and directories with these attributes.</summary>

SUID(SetUID), SGID(SetGID), Sticky bit.  

SetUID - permission bit. Allows you to elevate the user's privileges if necessary. Here the file is run on behalf of the user. For example, sudo.  

The following command is used to set the bit:

    chmod u+s <filename>
    
SetGID - Similar to SetUID, but the file is run as the group that owns the file.  

For example, the crontab command. To set this bit, use the command:

    chmod g+s <filename>
    
Sticky bit. It is mainly used for directories to protect files in them.  

An example is the /tmp directory.  

The command is used to install:

    chmod +t <filename>
    
Removing special bits:

    chmod u-s <filename>
    chmod g-s <filename>
    chmod -t <filename>
    
    </p>
    
  </details>
  
   <details><summary>17. Give definitions of sticky bits and mechanism of identifier substitution. Give 
an example of files and directories with these attributes.</summary>
The r and x attributes must be present.  

x - execution permission,  

r - read permission.  

x without r is meaningless.
  </details>
