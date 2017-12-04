#KEVIN LE
curl "https://twitter.com/gov/lists/us-senate/members?lang=en" > twit.txt
#get twitter page. works best with a text file named 'twit.txt' in current directory

name=$(egrep "$1" twit.txt | cut -d "\"" -f4 | cut -d " " -f1 | sed 's/badges//g')
#find line which contains command argument, using cut to isolate twitter handle

if grep -q "$1" twit.txt; then
    echo ${name}

else
    echo no twitter handle found for $1
fi


