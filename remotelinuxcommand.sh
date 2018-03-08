#!/bin/bash
# Emirsah KURSATOGLU
# www.emirsah.com
# Linux, remote server run command script

 
echo -n "Enter IP Address : "
read ipadd
echo "" 
echo "" 

echo -n "Enter Server Port Number : "
read port
echo "" 
echo "" 
# Enter server username
 
echo -n "Enter $ipadd Username : "
read username
echo "" 
echo "" 
# Enter the command that you want to run on the remote server.
 
echo -n "Enter the command you want to run on the remote server: "
read command
echo "" 
echo "information below correct?"
echo ""
echo "Remote server: $ipadd"
echo "Port: $port"
echo "Username: $username"
echo "Command: $command"
echo ""
echo -n "If it is correct (y/n) :  "
echo ""
    read correct
        if echo "$correct" | grep -iq "^n" ;then
           echo " Exiting the script."; exit 0;;
        else
           echo "OK, the script will continue."; break;;
        fi

echo ""
echo ""
runcommand=$(ssh -p $port $username@$ipadd "$command")
echo $runcommand
echo ""
echo ""
echo "Finished running the remote command"
exit 0
