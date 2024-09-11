#! /usr/bin/bash


GREETINGS="HELLO"
NHAT="GREAT DATA ENGINEER"

export GREETINGS  
export NHAT
unset GREETINGS

env | grep "NHAT"

unset NHAT
env | grep "NHAT"


