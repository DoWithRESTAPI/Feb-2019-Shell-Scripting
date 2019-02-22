BEGIN{
FS=":"
print "Hello, vicky"
}
{
 if ( $1=="root" )
  {
   $1="ZEESHAN"
   print $0
   print "ok"
  }
 else if ( $3==1)
   print "====================This is root line"
 else
  {
   print "you dont have GID as 0 in ",NR
  }
}
