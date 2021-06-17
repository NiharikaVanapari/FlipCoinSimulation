echo "Welcome to Flip Coin Simulation"
random=$((RANDOM%2))
if [ $random -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi
