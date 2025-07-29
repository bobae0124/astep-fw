#!bin/bash
for i in {0..3} 
do	
    for r in {0..34}
	do
		for c in {3..34}
		do
		## w123q10 #Please use 'w101q12_may28yml_inj.yml' for injection and noise scan. This yml file is optimized and used in the beam test at FNAL in June, 2024.
            		#injection scan
			echo "python3.12 main.py -y w101q12_may28yml_inj -i 0 $i $r $c   -c 4 -T 2 -n  _w123q10_c4_cid"$i"c"$c"r"$r"_2s_200mVth_300mVinj"
			      python3.12 main.py -y w101q12_may28yml_inj -i 0 $i $r $c   -c 4 -T 2 -n "_w123q10_c4_cid${i}c${c}r${r}_2s_200mVth_300mVinj"
            		#noise scan. -e enable pixel; quadchip_allOff : 200 mV threshold and 300 mV injection
			echo "python3.12 main.py -y w101q12_may28yml_inj -e 0 $i $r $c   -c 4 -T 5 -n  _w123q10_c4_cid"$i"c"$c"r"$r"_5s_200mVth_noisescan"
			      python3.12 main.py -y w101q12_may28yml_inj -e 0 $i $r $c   -c 4 -T 5 -n "_w123q10_c4_cid${i}c${c}r${r}_5s_200mVth_noisescan"
		done
	done
done
