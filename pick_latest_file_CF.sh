

##Filename=sorted_aces_ids.txt
##SearchFile=date_aces.txt


Filename=$1
SearchFile=$2

for i in `awk -F"|" '{print $1}' $Filename`
do
##echo $i
grep $i $SearchFile |tail -1 >>found_aces_id.txt

done 
##<found_aces_id.txt>pick_latest_file.sh.log
