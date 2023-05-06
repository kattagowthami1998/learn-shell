a=10
name=devops

#print variables
echo a=${a}

DATE=$(date +%F)
echo today DATE is ${DATE}

ARTH=$((2-3*4/2))
echo ARTH=${ARTH}

# Special Variables for dynamic Inputs(arguments) that are given while executing bash command
echo Script Name - $0
echo First Argument - $1
echo Second Argument - $2
echo All Argument - $*
echo No of Arguments - $#
