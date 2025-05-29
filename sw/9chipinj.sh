#!bin/bash
for i in {0..8}
do	
	for r in {0..34}
	do
		for c in {3..34}
		do
			echo "python3.12 mainbb.py -y 9chip_may28yml_Allchip -i 0 $i $r $c   -c 9 -T 2 -n _c9_"$i"c"$c"r"$r"_2s"
			python3.12 mainbb.py -y 9chip_may28yml_Allchip -i 0 $i $r $c   -c 9 -T 2 -n "_c9_${i}c${c}r${r}_2s"
		done
	done
done
