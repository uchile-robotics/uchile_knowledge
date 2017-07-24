#!/bin/bash
#ejemplo : ./CreateMapperObject.sh GermanOpen2017/Objects/

classes=("unknown" "drinks" "food" "snacks" "toiletries" "containers" "candies")
n_classes=${#classes[@]}

echo "classes : ['drinks','food','snacks','toiletries','containers','candies']" >> mapper.yaml
for (( i=0; i<${n_classes}; i++ )); do
    item="${classes[$i]}"
    echo "$item: []" >> mapper.yaml
done

echo "" >> mapper.yaml

for (( i=0; i<${n_classes}; i++ )); do
    item="${classes[$i]}""_location"
    echo "$item: " >> mapper.yaml
done
echo "" >> mapper.yaml
places=("bedroom" "kitchen" "living_room" "office" "corridor" "bathroom")
n_places=${#places[@]}
echo "places: ['bedroom','kitchen','living_room','office','corridor','bathroom']" >> mapper.yaml
for (( i=0; i<${n_places}; i++ )); do
    item="${places[$i]}"
    echo "$item: []" >> mapper.yaml
done

echo "" >> mapper.yaml

for (( i=0; i<${n_places}; i++ )); do
    item="${places[$i]}""_doors"

    echo "$item: '3'" >> mapper.yaml

done

echo "" >> mapper.yaml

for (( i=0; i<${n_places}; i++ )); do
    item="${places[$i]}""_table"
 	echo "$item: '3'" >> mapper.yaml

done

echo "" >> mapper.yaml

for (( i=0; i<${n_places}; i++ )); do
    item="${places[$i]}""_chairs"
	echo "$item: '3'" >> mapper.yaml

done
echo "" >> mapper.yaml
echo "classes_colour : ['blue','red','yellow','black','white']" >> mapper.yaml
classes_colour=("blue" "red" "yellow" "black" "white")
n_colour=${#classes_colour[@]}

for (( i=0; i<${n_colour}; i++ )); do
    item="${classes_colour[$i]}"
    echo "$item: []" >> mapper.yaml
done

echo "" >> mapper.yaml
echo "size: []" >> mapper.yaml
echo "weigth: []" >> mapper.yaml

echo "" >> mapper.yaml
echo "unknown_class: unknown" >> mapper.yaml

 for (( i=0; i<${n_classes}; i++ )); do
    item="${classes[$i]}""_smallest"
    echo "$item: " >> mapper.yaml
    item="${classes[$i]}""_biggest"
    echo "$item: " >> mapper.yaml
    item="${classes[$i]}""_lightest"
    echo "$item: " >> mapper.yaml
    item="${classes[$i]}""_heaviest"
    echo "$item: " >> mapper.yaml
done


echo "object_smallest: " >> mapper.yaml
echo "object_biggest: " >> mapper.yaml
echo "object_lightest: " >> mapper.yaml
echo "object_heaviest: " >> mapper.yaml