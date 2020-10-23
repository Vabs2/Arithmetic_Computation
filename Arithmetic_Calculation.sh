#! /bin/bash
declare -A storeResult
storeResult=(["result1"]=0 ["result2"]=0 ["result3"]=0 ["result4"]=0 )

function getInputs()
{
read -p "Enter First Number " input1
read -p "Enter Second Number " input2
read -p "Enter Third Number " input3

firstEquation
secondEquation
thirdEquation
fourthEquation
}

function firstEquation()
{

        firstEquationResult=$(( $input1 + $input2 * $input3 ))
        storeResult[result1]=$firstEquationResult
        echo $firstEquationResult
}

function secondEquation()
{
        secondEquationResult=$(( $input1 * $input2 + $input3 ))
        storeResult[result2]=$secondEquationResult
        echo $secondEquationResult
}

function thirdEquation()
{
        thirdEquationResult=$(( $input3 + $input1 / $input2 ))
        storeResult[result3]=$thirdEquationResult
        echo $thirdEquationResult
}

function fourthEquation()
{
        fourthEquationResult=$(( $input1 % $input2 + $input3 ))
        storeResult[result4]=$fourthEquationResult
        echo $fourthEquationResult
}
getInputs
