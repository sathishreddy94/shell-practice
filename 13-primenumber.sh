#!/bin/bash

# echo "enter a number : $NUMBER"

# read NUMBER

# if [ $((($NUMBER % 1) && ($NUMBER % $NUMBER))) -eq 0 ]; then
#     echo "given $NUMBER is prime number"
# else
#       echo "given $NUMBER is not prime number"
# fi
 
#!/bin/bash

echo -n "Enter a number: "
read NUMBER

if [ $NUMBER -le 1 ]; then
    echo "$NUMBER is not a prime number"
    exit 0
fi

is_prime=1  # assume prime

for (( i=2; i*i<=NUMBER; i++ ))
do
    if [ $((NUMBER % i)) -eq 0 ]; then
        is_prime=0
        break
    fi
done

if [ $is_prime -eq 1 ]; then
    echo "$NUMBER is a prime number"
else
    echo "$NUMBER is not a prime number"
fi

