#!bin/bash
for i in {0..3}
do	
	for r in {0..34}
	do
		for c in {3..34}
		do
			#echo "python3.12 mainbb.py -y w101q12_may28yml_inj -i 0 $i $r $c   -c 4 -T 2 -n _c4_"$i"c"$c"r"$r"_2s"
			#python3.12 mainbb.py -y w101q12_may28yml_inj -i 0 $i $r $c   -c 4 -T 2 -n "_c4_${i}c${c}r${r}_2s"
			echo "python3.12 mainbb.py -y w101q12_may28yml_inj -i 0 $i $r $c   -c 4 -T 2 -n w112q06__c4_"$i"c"$c"r"$r"_2s"
			python3.12 mainbb.py -y w101q12_may28yml_inj -i 0 $i $r $c   -c 4 -T 2 -n "_w112q06_c4_${i}c${c}r${r}_2s"
		done
	done
done
