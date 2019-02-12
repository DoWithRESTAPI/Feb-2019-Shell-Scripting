for each in $( seq 1 4 )
do
   #break
   echo "${each}"
   if [[ 3 -eq 3 ]]
   then
      if [[ 2 -eq  2 ]]
      then
        break
      fi
   fi
done
