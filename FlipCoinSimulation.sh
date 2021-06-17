echo "Welcome to Flip Coin Simulation"
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
if [ $headcount -eq $maxwon ]
then
	woncount=$((headcount-tailcount))
	echo "Head won."
	echo "Head won by $woncount points."
else
	wonCount=$((tailCount-headCount))
	echo "Tail won."
	echo "Tail won by $wonCount points."
fi
