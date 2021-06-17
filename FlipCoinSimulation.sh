echo "Welcome to Flip Coin Simulation"
woncount=0
while [ $woncount -le 2 -a $woncount -ge -2 ]
do

	headcount=0
	tailcount=0
	maxwon=21
	while [ $headcount -lt $maxwon -a $tailcount -lt $maxwon ]
	do
		random=$((RANDOM%2))
		if [ $random -eq 1 ]
		then
			((headcount++))
		else
			((tailcount++))
		fi
	done

	woncount=$((headcount-tailcount))
done

if [ $headcount -eq $maxwon ]
then
	woncount=$((headcount-tailcount))
	echo "Head won."
	echo "Head won by $woncount points."
else
	woncount=$((tailcount-headcount))
	echo "Tail won."
	echo "Tail won by $woncount points."
fi
