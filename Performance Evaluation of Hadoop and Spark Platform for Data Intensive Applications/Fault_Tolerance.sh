for i in `cat nodes`; do 
	echo $i; 
	ssh  $i 'jps | grep DataNode | cut -d" " -f1 | xargs -rn1 kill' 
done
