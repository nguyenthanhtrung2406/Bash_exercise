#!/bin/bash
input_birthday()
{
    read -p 'Nhập ngày sinh: ' day
    read -p 'Nhập tháng sinh: ' month
    read -p 'Nhập năm sinh: ' year
}

check_validate()
{
    if [ $day -le 0 -o $day -gt 31 ]
    then
        echo "ngày $day không phù hợp"
        exit 1 
    fi
    
    if [ $month -le 0 -o $month -gt 12 ]
    then
        echo "tháng $month không phù hợp"
        exit 2 
    fi
    
    if [ $day == 31 && $month -eq 2 -o $month -eq 4 -o $month -eq 6 -o $month -eq 9 -o $month -o 11 ]
    then
        echo "ngày $day không phù hợp với tháng $month"
        exit 3
    fi
    
    if [ $month -eq 2 && $year % 4 -eq 0]
    then 
        if [ $day -gt 29 ]
            then
                echo "ngày $day không phù hợp vì $year là năm nhuận"
                exit 4
        fi
    fi
}

selection()
{
    echo "    MENU    "
    echo "1_ Cơm tấm"
    echo "2_ Bún đậu mắm tôm"
    echo "3_ Bánh đa cua"
}
input_choice()
{
    echo "Bạn muốn dùng món gì? "
    read choice
    case $choice in
    1)
        echo "Chúc bạn dùng cơm tấm ngon miệng"
        ;;
    2)
        echo "Chúc bạn dùng bún đậu mắm tôm ngon miệng"
        ;;
    3)
        echo "Chúc bạn dùng bánh đa cua ngon miệng"
        ;;
    esac
}

input_birthday
check_validate
if [ check_validate ]
    then 
        selection
        input_choice
fi  
