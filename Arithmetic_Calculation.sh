#! /bin/bash

function input()
{
read -p "Enter the a input " input1
read -p "Enter the b input " input2
read -p "Enter the c input " input3

}

function firstEquation()
{
        input
        firstEquationResult=$(( $input1 + $input2 * $input3))
        echo $firstEquationResult
}
firstEquation
function secondEquation()
{

        input
        secondEquationResult=$(( $input1 * $input2 + $input3 ))
        echo $secondEquationResult
}
secondEquation
