
#!/bin/Bash

input () 
{
    read -p "_ Nhập vào 1 số : " int1
}

loop()
{
    for ((i = 1; i <= $int1; i++))
    do 
        echo $i
    done
}


loop2()
{
    result=1
    for ((i=1; i<=$int1; i++))
    do
    	result=$(($result * $i))
    done
    echo 'Giai thừa của' $int1 'là'
    echo $result
}
input
loop
loop2
