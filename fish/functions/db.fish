set -l myip (ip)


switch $myip
case '180.87.100.10'
    set shard 'singapore'
case '62.92.26.133'
    set shard 'norway'
end    

if [ $shard = "singapore" ]
  echo $shard
  db_sg
else if [ $shard = "norway" ]
  db_no
else
  echo "unknown datacentre"
end

