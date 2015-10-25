#!/usr/bin/env bash
for i in {0..255} ; 
do
  if [[ $(($i % 16)) == 0 ]]; then 
    echo ""
  fi

  case $i in
    [0-9])
      current="  ${i}"
      ;;
    [0-9][0-9])
      current=" ${i}"
      ;;
    *)
      current="${i}"
      ;;
  esac

  printf "\x1b[38;5;${i}m$(echo -e "\xe2\x96\x84")${current}$(echo -e "\xe2\x96\x84")"; 
done

echo ""
