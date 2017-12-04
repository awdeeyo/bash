#KEVIN LE
$> cat ./main.sh 1 2 3 4


array=(1 2 3 4)

params=3
count=0
newarray=( )

while [ $params -gt -1 ]; do
    newarray[$count]=${array[$params]}
    let params=params-1
    let count=count+1
done

echo $#
echo ${newarray[@]}
