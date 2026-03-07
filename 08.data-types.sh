#!/bin/bash
 
 NUM1=100
 NUM2=200

 SUM=$(($NUM1+$NUM2))

 echo "sum is : $SUM"
#Arrays 

 FRUITS=(" Apple" "Banana" "Melon")
 echo " Fruits are : ${FRUITS[@]}"
 echo " First fruit is : ${FRUITS[0]}"
 echo " Second fruits is : ${FRUITS[1]}"
 echo " Third fruit is : ${FRUITS[2]}"