#! /bin/bash


echo -n "Enter an integer: "

read n1
echo -n "Enter another integer: "

read n2

sum=$(($n1+$n2))

product=$(($n1*$n2))

echo "product is $product and sum is $sum"