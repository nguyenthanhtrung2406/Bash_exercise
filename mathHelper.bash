#!/bin/bash
selection()
{
    echo '1_ Giải phương trình bậc 2 (ax^2 + bx + c = 0)'
    echo '2_ Tính diện tích hình tròn'
    echo '3_ Kiểm tra số nguyên tố'
}
input_equation()
{
    read -p 'Nhập a: ' a
    read -p 'Nhập b: ' b
    read -p 'Nhập c: ' c
}

solve_equation()
{
    delta = $(echo "$b^2 - 4*$a*$c" | bc)
	if [ $delta -lt 0 ]
	    then
     	echo "Phương trình vô nghiệm"
    elif [ $delta == 0 ]
        then
     	echo "Phương trình có 1 nghiệm duy nhất x = "
    	x=$(echo "scale=2; -$b/(2*$a)" | bc)
     	echo "$x"
	else
     	echo "Phương trình có 2 nghiệm: "
    	x1=$(echo "scale=2; -($b + sqrt($delta))/(2*$a)" | bc)
     	echo "x1 = $x1"
     	x2=$(echo "scale=2; -($b - sqrt($delta))/(2*$a)" | bc)
     	echo "x2 = $x2"
    fi
}

input_radius()
{
    read -p "Nhập bán kính: " r
}

circle_area()
{
    s = $r \* $r \* 3.14 | bc
    echo "Diện tích hình tròn cần tìm là: $s"
}

input_number()
{
    read "Nhập số muốn kiểm tra: "number
}

check_prime()
{
    #sqrt_number = $(echo "scale = 2;  sqrt(number)" | bc)
    for ((i = 1; i < $(number/2); i++))
        do
	        count=$(( number%i ))
        if [ $count == 0 ]
      	then
           	echo "$number không phải số nguyên tố"
           	exit 0
      	fi
    done
    echo "$number là số nguyên tố"
}
choice()
{
    echo 'Bạn muốn làm gì:'
    read tmp
    case $tmp in
    1)
        input_equation
        solve_equation
        ;;
    2)
        input_radius
        circle_area
        ;;
    3)
        input_number
        check_prime
        ;;
    esac
    
}

selection
choice
