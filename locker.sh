#!bin/bash

username=""
company_name=""
pin=""

for i in {1..3}; 
do
    if [ "$i" -eq 1 ];
     then 
        echo "Enter Your Name Please: "
        read username 
        echo "Welcome, "$username" "
    elif [ "$i" -eq 2 ];
     then 
         echo "Enter Your Company Name: "
         read company_name
         echo "So You Are From,"$company_name" "
    else
         echo "Enter Your PIN: "
         read pin 
    fi
done

if [ "$username" = "smilo" ] && [ "$company_name" = "DYPTC" ] && [ "$pin" = "0601" ];
then
     echo "Your Access is Granted"
else 
     echo "Your Access is not Granted"
fi
