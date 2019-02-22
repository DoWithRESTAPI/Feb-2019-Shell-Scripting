BEGIN{
 print "while loop will start"
 i=1
}
{
  while ( i < 5)
  {
   print "The no is:",i
   i=i+1
   }

}

END{
 print "The while loop is done"
}
