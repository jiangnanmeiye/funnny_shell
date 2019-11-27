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
echo $[3+4]
printf "%-10s %-8s %-4.2f\n" 
