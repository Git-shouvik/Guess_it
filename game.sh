
currentdir=30
function evaluate {
  while [[ "$val" -ne "$currentdir" ]]
do
#echo "HOW MANY FILES ARE IN THE CURRENT DIRECTORY "
read -p " TAKE A GUESS AGAIN " val
if [[ -z $val ]]
 then
  echo "NO Inputs ! "
  else
    if [[ $val =~ ^[0-9]*$ ]]
       then
        if [[ $val -lt $currentdir ]] 
           then 
           echo " the guess is too low "
        elif [[ $val -gt  $currentdir ]]
           then
            echo " the guess is too high "
         fi
   else
   echo " please enter positive integer"
   val=0
   fi
fi
done
             echo "   CONGRATES YOU  have guessed it  "
                 echo  "   THANK YOU FOR PLAYING  "
}
flag=0
while [[ $flag -eq 0 ]]
do
 echo "How Many files are in the current directory "
read -p "Take a guess" val
if [[ -z $val ]]
then
echo " inputs please !"
else
   let flag=$flag+1
  if [[ $val =~ ^[0-9]*$ ]]
   then
    if [[ $val -ne $currentdir ]]
    then
     echo "The guess was either to LOW or HIGH"
     evaluate
     else
    echo "Congratas U have gussed it"
   fi
 else
 echo "Enter positive integers ! "
    val=0
    evaluate
 fi
fi
done


