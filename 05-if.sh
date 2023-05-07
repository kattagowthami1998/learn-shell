fruit_name=$1
quantity=$2

if [ -z "$fruit_name" ];then
echo input missing
exit
fi

## Always double quote variables in expressions

if [ "$fruit_name" == "mango" ]
then
  echo mango quantity is $quantity
else
  echo fruit does not exist
fi

if [ "$quantity" -gt 100 ];then
  echo mango price is 1$
else
  echo mango price is 2$
fi