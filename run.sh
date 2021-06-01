export time=$(date +"%d:%m:%Y_%T")
export name=$time
export i=0
while read line
do 
hexdump -e '2/8 "%16x " "\n"' -n $((16 * $2)) /dev/random > rng_files/$name.txt
./$1 $line rng_files/$name.txt > results/$name.txt
python first_try.py results/$name.txt pictures/$name.png

export i=$(($i+1))
done < $3
