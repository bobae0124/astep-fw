#!bin/bash
for i in {0..8}
do
	for r in {0..34}
	do
		for c in {3..34}
		do	
   			#Please use '9chip_may28yml_Allchip.yml' for injection and noise scan. This yml file is optimized and used in the beam test (may28yml) at FNAL in June, 2024.
			echo "python3.12 main.py -y 9chip_may28yml_Allchip -i 0 $i $r $c -c 1 -T 10 -n _1stchipPCB_c9_cid"$i"c"$c"r"$r"_5s_200th300inj_10s"
			      python3.12 main.py -y 9chip_may28yml_Allchip -i 0 $i $r $c -c 1 -T 10 -n _1stchipPCB_c9_cid${i}c${c}r${r}_5s_200th300inj_10s
			echo "python3.12 main.py -y 9chip_may28yml_Allchip -e 0 $i $r $c -c 1 -T 10 -n _1stchipPCB_c9_cid"$i"c"$c"r"$r"_5s_200thnoisescan_10s"
			      python3.12 main.py -y 9chip_may28yml_Allchip -e 0 $i $r $c -c 1 -T 10 -n _1stchipPCB_c9_cid${i}c${c}r${r}_5s_200thnoisescan_10s
		done
	done
done
