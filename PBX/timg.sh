USERID="237143156"
KEY="828953966:AAHB2SNn8f8gX0cZgmiBo4SJCXUs-DS7wCY"
URL="https://api.telegram.org/bot$KEY/sendPhoto"
FILE=$1

curl --fail -F chat_id="$USERID" -F photo=@"$FILE" $URL -X POST --progress-bar -o tmp --connect-timeout 0

sleep 1
clear
