* What is the difference between an A Record, C Record and MX Record?
A it's IPv4 resolution
MX represent one or more email servers for the domain.
C (or CNAME) it's a alias for another domain. 

* What is the local host, or "home" IP address?
Any ip within range 127.0.0.1-127.255.255.254 (127.0.0.0/8)

* How many IP addresses are in this network address: 177.199.1.0/24
254

* On your Linux host, there are many processes running at a time. However, one information can uniquely identify a process. What is it called?
PID or ProcessID

* When your system boots, it starts the very first process on your instance. What is it called?
init

* You are asked by your system administrator to identify all processes that you own on the host. Which
command would you run to do that?
$ ps axu

* You are asked by your system administrator to identify all the processes on your system. Can you provide two commands that display all processes on the host?
$ ps axu
$ top

* What syntax is used on Linux in order to execute a process in the background?
$ proc &

* You executed a command in the background, but you want to have your process executed in the foreground:
$ fg 1

* Your process is now executed in the foreground. What controls would you hit on your keyboard in order to stop the process (and not kill it)
Press Ctr-Z

* Your process is now interrupted:
$ bg 1

* What command is used on Linux in order to list all processes given a specific pattern?

* What command would you use in order to easily kill (SIGKILL) all processes starting with “fire” ?

* What command can be used on Linux in order to monitor processes in real time?
$ top

* What command would you use to find last ssh logins on Linux?

* Write a linux command that delete all the files in the directory /home/pepe/ more than a year old and which extensions are .txt or .tgz?
$ find /home/pepe 
