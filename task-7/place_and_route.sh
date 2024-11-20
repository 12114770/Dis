for i in synths/*.json; do 
    name=$(basename "$i" .json)
    nextpnr-ice40 --package sg48 --up5k --json "$i" --pcf counter.pcf --asc "bitstreams/$name.asc"
done

# Perform timing analysis and strip away all unnecessary output
for i in bitstreams/*.asc; do printf "‘basename -s .bitstreams/json.asc $i‘: "; icetime -p counter.pcf -d up5k -P sg48 $i |
grep "Timing estimate" | sed -e "s/\/\/ Timing estimate: \(.*\) (\(.*\))/\2/g" ;done

#pack
for i in bitstreams/*.asc; do 
    name=$(basename "$i" .asc)
    icepack "$i" "bitstreams/${name}.bin"
done
#unpack

for i in bitstreams/*.bin; do 
    name=$(basename "$i" .bin)
    icepack "$i" "bitstreams/${name}u.asc"
done
