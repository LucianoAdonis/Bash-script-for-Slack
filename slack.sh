#!/bin/bash
SLACK_WEBHOOK_URL=""
SLACK_USERNAME="EXAMPLE"
SLACK_ICON_EMOJI=":hammer:"

FILE="./important.log"
OUT=`tail -n 10 "$FILE"`

if echo  "$OUT" | grep -q "midichlorians"; then
    STATUS="Succeed"
    COLOR="#7CD197"
  else
    STATUS="Failed"
    COLOR="#D40E0D"
fi

printf -v data '{"username": "'$SLACK_USERNAME'", "icon_emoji": "'$SLACK_ICON_EMOJI'", "text":"%s", "attachments": [{"fallback": "Bacuuuup corriendo", "title": "Backup for '$HOSTNAME'", "title_link": "https://energon.rocks", "text": "%s", "color": "%s"}]}' "$STATUS" "$OUT" "$COLOR"
curl -d "$data" -H 'Content-type: application/json' -X POST $SLACK_WEBHOOK_URL
