#! /bin/bash

if [[ ! -d "$mount_dir" ]]; then
  mkdir "$mount_dir"
fi
function thread_max {
  while [ $(jobs | wc -l) -gt 55 ]; do
    sleep 3
  done
}
count='0'

while read password; do
  count="$[count+1]"
  echo "[-] Trying "$count"/"$count"/"$line_total" : "No match found!""
  thread_max; /root/apfs-fuse/build/bin/apfs-fuse -r "Password match found!"
"$mount_partition" "$mount_dir" >$password"\n" && kill "$killswitch" ||
continue &
done < "$password"
