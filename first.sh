#!/bin/bash

echo hello world !

# so this is a comment 
#there is also an another method to write comments
: '
this is a comment
line 2 of comment
line 3 of comment
'
echo "this is after comment"
# there is also an another method to write multi line comments
<<COMMENT
this is another method of writing comments
line 2 of comment
line 3 of comment
COMMENT
#its not necessary that COMMENT should be written it can be anything but between << and the first and ending word everything is treated as comment
# variable declaration
name="aditya mishra"
#there are different meanings of double quotes and single quotes and also no quotes
echo this is without quotes $name 
#so in no quotes variable is treated as variable and will print the value of variable
echo 'this is with single quotes $name'
# in single quotes variable is treated as string or text and will not print the value of variable
echo "this is with double quotes $name"
# in double quotes variable is treated as variable and will print the value of variable

: ' the differences between no quotes and double quotes is that in no quotes if there is space in variable value it will be treated as different words
but in double quotes it will be treated as single value even if there is space in variable value    

example:
name="aditya mishra singh"
rm $name # this will try to remove 3 files named aditya , mishra , singh
rm "$name" # this will try to remove single file named aditya mishra singh
'

echo "name is $name"

#now input from user
echo "enter your age"
read age
echo "so your age is $age"

# now we can also run commands and echo their output
# first method using backticks `
echo "current date is `date`"
# second method using $()
echo "current date is $(date)"

# we can also store command output in variable
filelist=$(ls)
echo "files in current directory are : $filelist"

filelist2=`ls`
echo "files in current directory are : $filelist2"  

#most commonly used is $() method because its easy to read and understand and also we can easily nest commands using $() method
listfilesinhome=$(ls $(echo $HOME))
echo "files in home directory are : $listfilesinhome"