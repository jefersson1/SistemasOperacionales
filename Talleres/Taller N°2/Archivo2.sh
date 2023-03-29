#!/bin/bash

cd C1/C2

read -ra v1 < Ar1
read -ra v2 < Ar2


declare -a vS

for ((i=0; i<5; i++))
do
 vS[$i]=$(( ${v1[$i]} + ${v2[$i]} ))
done

echo "El vector 1 es: ${v1[@]}"
echo "El vector 2 es: ${v2[@]}"
echo "La suma total es: ${vS@]}"

echo ${vS[@]} > A3
