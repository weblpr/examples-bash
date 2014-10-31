#! /bin/bash
# Example call: ./request.sh <token here> n_bs47040.jpg
token=$1
filename=$2
bytes=$( base64 $filename )
echo "{\"token\":\"$token\",\"bytes\":\"$bytes\"}" > data.json
echo $( curl --silent -H "Content-Type: application/json" -d @data.json http://api.weblpr.com/requests )