#!bash/bin

echo "enter a number: $NUMBER"

read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then
    echo "given $NUMBER is even number"
else
      echo "given $NUMBER is odd number"
fi