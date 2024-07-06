select_name() {
   for i in `seq 1 1000`
   do
      docker inspect "$1_$i" >/dev/null 2>/dev/null
      [[ $? -eq 1 ]] && echo "$1_$i" && return
   done
     
   echo ""
}

select_name factorio