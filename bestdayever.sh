#!/bin/bash

name=$1

complement=$2

user=$(whoami)
date=$(date)

echo "Good morning $name!!"

sleep 1

echo "You're looking good today $name!!"

sleep 1

echo "You have the best $complement I've ever seen $name!!"  

sleep 1

echo "You are $user and today is $date"
