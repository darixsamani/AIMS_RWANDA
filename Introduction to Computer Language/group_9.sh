
i=0
j=2
while [ $i -ne 1000 ]
do
	k=0
	for a in $(seq 1 $j);
	do
		if [ $((j%a)) -eq 0 ]; then
			k=$((k+1))
		fi
	done
	if [ $k -eq 2 ]; then
		i=$((i+1))
		echo $j
	fi
	j=$((j+1))
done
