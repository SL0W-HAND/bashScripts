#!/bin/bash
echo "you die"  
echo "do you like a coffe? (y/n)"

read coffee

if [[ $coffee == "y" ]]; then
    echo "you die"
else
    echo "you live"
fi


echo "welcome to the game, chose a class
1. warrior
2. mage"

read class

case $class in
    1)
        echo "you are a warrior"
        ;;
    2)
        echo "you are a mage"
        ;;
    *)
        echo "you are a noob"
        ;;
esac
echo "prepared"

best= $((RANDOM%2))

echo "your first beast approaches. Prepare to battle (0,1)"

read trainshed

if [[ $beast == $trainshed ]]; then
    echo "you live"
else
    echo "you die"
    exit 1
fi

sleep 2

echo "Boss approaches. Prepare to battle (0,9)"
read trainshed

best= $((RANDOM%10))

if [[ $beast == $trainshed || $trainshed == "coffee"]]; then
    echo "you live"
elif [[ $trainshed == "coffee" ]]; then
    echo "you alwas live"
else
    echo "you die"
    exit 1
fi
