# question 2 exercise 4
# $1 the filename you want to look into. first will print the highest earner of the data set, next will print the lowest earner, and finally the last will print the number of 'female's earning in the top 10

echo highest earner
cat "$1" | tr ',' ' ' | cut -d" " -f1,2,4 | sort -k3n | tail -1

echo lowest earner
cat "$1" | tr ',' ' ' | cut -d" " -f1,2,4 | sort -k3n | sed 1d | head -1

echo number of females in the top 10 earners
cat "$1" | tr ',' ' ' | sort -k4n | tail -10 | grep 'female' | wc -l