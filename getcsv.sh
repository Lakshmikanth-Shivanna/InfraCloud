counter=0
RANDOM=$$
number_of_lines=${1:-10}
a=0
for i in `seq ${number_of_lines}`
do
	echo $((counter+1)), $(date +%s%N | cut -b10-19)>> inputFile

               
    # increment the value
    a=`expr $a + 1`
    counter=`expr $counter + 1`
    RANDOM=$$
done


