#! /bin/bash

echo 'I have a dinnter tonight, do you care to join?'


echo -n 'Enter "y" for yes or "n" for no:'
read respone 

if [ "$respone" == "y" ]
then 
    echo "thank you!"
elif [ "$respone" == "n" ]
then    
    echo "your feedback for this course will greatly help us improve this course."
else 
    echo "please enter a correct option!"
fi