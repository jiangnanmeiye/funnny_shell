# related to array
array_name=(ni hao wo shi ni de hao peng you);
echo ${#array_name[@]}
echo ${#array_name[1]}
echo ${array_name[1]:0:3}
echo ${array_name[1]::3}

# related to parameter
echo $*
# echo $@
# shell's name
echo $0
# shell's pid
echo $$
# last deamon process's pid 
echo $!
#exit number
echo $?

val=`expr 2 + 2`
# can only use $val
echo $val
echo ${val}

val1=$[2+2]
echo ${val1}

val2=$((2+2))
echo ${val2}

#replace command
# 1. `ls /etc`
# 2. $(ls /etc)
path=$(cd `dirname $0`;pwd)
echo $path

# logic judgement
### [ $a -lt $b ]
### [[ $a -gt $b ]] mainly for string verification
### (( $a -eq $b )) mainly for number verification

# output
printf "%-10s %-8s %-4.2f\n" jiangnanmeiye man 4.6576

# process control
a=1
b=2
if [ $a -lt $b ]
then
 printf "right\n"
fi

a=3
b=4
if (( $a == $b ))
then
 printf "right\n"
else
printf "wrong\n"
fi

a="right"
b="wrong"
if [[ $a == $b ]]
then
printf "not equal\n"
elif [[ $a != $b ]]
then
 printf "equal\n"
fi

for var in `ls ../../`
do
 printf "${var}\n"
done

c=4
while (( $c != 0 ))
do
 printf "$c\n"
 c=$[c-1]
done 

# while :  always loop
# until reverse the logic of while

a=2
case $a in
 1)
 printf "just 1\n"
 ;;
 2)
 printf "only 2\n"
 ;;
 esac

 # we have break continue too

 # function
funWithParam() {
    printf "first parameter $1 !\n"
    printf "second parameter $2 !\n"
}
funWithParam 1 2
echo $?

# familiar with import other file
source shell2.sh
echo ${value}

read param
echo ${param}

# code with color
printf "\033[032m SUCCESS: yay \033[0m\n"
printf "\033[033m WARNING: hmm \033[0m\n"
printf "\033[031m ERROR: fubar \033[0m\n"
printf "\033[034m ANYTHING: posiible \033[0m\n"