v=`pactl get-sink-volume @DEFAULT_SINK@ | grep -P -o "[0-9]*(?=%)" | head -1`
if [ $((v+$1)) -lt "101" ];
then
  pactl set-sink-volume @DEFAULT_SINK@ +$1%
else
  pactl set-sink-volume @DEFAULT_SINK@ "+$((100-v))%"
fi
