for each in 2 3 4 5 6 7
do  
   echo "using continue"
   if [[ ${each} -eq 5 ]]
   then
     continue
   fi 

   echo $each

done

