# A name given to set of commands is called as function

# Declare a function

func_name() {
  echo hello world
}

#call function
func_name

## We can send inputs to the function and we can access them with special variables $1-$n, $*, $#0

func_name1() {
  a=123
  echo First Argument = $1
         echo Second Argument = $2
         echo All Arguments = $*
         echo No Of Arguments = $#
}

a=234
func_name1 234 cdx

# Functions will have its own exit status , but not with exit command, we have to use return command with exit states.
func_name2() {
  echo hello
  return 1
  # 1 is a exit status and it ranges from 0-255
}

func_name2
echo exit ststus of function -$?