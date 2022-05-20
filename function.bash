#!/bin/Bash
input () 
{
    read -p "_ Nhập vào số thứ nhất: " int1
    read -p "_ Nhập vào số thứ hai: " int2
}
choice()
{
    read -p "_ Bạn muốn làm gì: " string
}
selection()
{
    echo "1_ Cộng"
    echo "2_ Trừ"
    echo "3_ Nhân"
    echo "4_ Chia"
}
input
selection
choice
case $string in 
    1)
        echo $int1 + $int2 = 
        expr $int1 + $int2
        ;;
    2) 
        echo $int1 - $int2 =
        expr $int1 - $int2

        ;;
    3)
        echo $int1 * $int2 =
        expr $int1 \* $int2

        ;;
    4)
        echo $int1 / $int2 =
        expr $int1 / $int2

        ;;
esac
