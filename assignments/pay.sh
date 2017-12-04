#KEVIN LE

if [ "$#" -ne 5 ]; then
echo --- >&2
echo Invalid number of arguments. >&2
exit 1

else

curl -0 "$1/$2" > names.txt
curl -0 "$1/$3" > ids.txt
curl -0 "$1/$4" > hours.txt
curl -0 "$1/$5" > rate.txt

while read line; do 
    name=$line    
    
    if grep -q "$name" ids.txt; then
    
    id=$(egrep "$name" ids.txt | cut -d ";" -f2)
    
        if grep -q "$id" hours.txt; then
        
        hours=$(egrep "$id[;]" hours.txt | cut -d ";" -f2)
        
            if grep -q "$hours" rate.txt; then
            
            rate=$(egrep "$id[;]" rate.txt | cut -d ";" -f2)
            pay=$(($hours*$rate))           
            echo $name "    " '$'$pay $6

            else            
            echo $name "    " '$0' 
            #no pay due to pro bono
            fi


        else
        echo $name "    " '$0' 
        #no pay due to no hours worked
        fi


    else
    echo --- >&2
    echo $name has no ID number. >&2
    fi


    
done < names.txt
exit 0

fi




