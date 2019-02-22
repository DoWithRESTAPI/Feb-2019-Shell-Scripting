#!/bin/bash
echo -e "User\tUID\tGID\tHome\tShell"
 awk -F : '{print $1,"\t",$3,"\t",$4, "\t", $6,"\t",$7 }' /etc/passwd
#awk -F : '{print $1," ",$3," ",$4, " ", $6," ",$7 }' /etc/passwd
