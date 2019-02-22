BEGIN {
print "User\tHome"
FS=":"
OFS="\t"
}

{
 print $1,$7
}

END {
print "COMPLETED"
}
