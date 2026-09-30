#!/bin/bash

hi=$(seq 1 5)

echo $?
echo $hi
echo hi $hi
echo "hi $hi"
echo 'hi $hi'

#mkdir $hi
#rmdir $hi

#there are some variables that are set by default in bash or in system

#example:
echo $USER
echo $HOME
echo $SHELL
echo $PWD
echo $BASH_VERSION
echo $PATH

#there some rules or conventions for naming variables
#1. should start with a letter or underscore
#2. can contain letters, numbers, or underscores
#3. are case sensitive
#4. should not use special characters or spaces
#5. by convention, environment variables are usually in uppercase

#arithmatic operations with variables
# so bash automatically treats variables as strings and also as numbers based on the context
#example:
a="aditya"
b=10
c=20

echo $a$b$c  #string concatenation

#to conduct arithmatic operations, we can use $((..)) or let or expr
echo $((b+c))  #30
let d=b+c
echo $d  #30

echo $b + $c  #but this will not work as above because its treated as string
#we can also use expr command
e=$(expr $b + $c)
echo $e  #30
#or 
f=`expr $b + $c`
echo $f  #30

# we can take input arguments from command line and assign them to variables
#example:
echo $0 #script name
echo $1 #first argument
echo $2 #second argument
echo $3 #third argument
# we can also get info about number of arguments passed
echo $#

# we can also get all the arguments passed as a single string
echo $*

# we can also get all the arguments passed as an array
echo $@

#we can get processid using $$
echo $$
 
#the difference between $* and $@ is in that when quoted, "$*" treats all arguments as a single string, while "$@" treats each argument as a separate string

#to extinguish between variables and text, we can use {}
name="aditya"
surname="kumar"
echo "hello $name"
echo "hello ${name}!"
echo "hello $name$surname"
echo "hello ${name}${surname}!"
echo $name+$surname
echo ${name}+${surname}
#therefore, its a good practice to use {} when variables are adjacent to text or other variables and no need to use {} when variables are standalone and also no need to use + to concatenate variables
