#KEVIN LE
$ tail -n +2 /tmp/employees #start at 2nd line, taking input from an 'employees' file

grep "^hourly" #filter lines which start with 'hourly'

while read employees do
    
    b=$(cut -f4 -d$'\t' -f4) #set hours into variable 'b'
    let total=$($1*$b)
    c=$(cut -f2 -d$'\t') #isolate name
    
    echo ${c} \\t \$${total}
    
    fi
    
done
