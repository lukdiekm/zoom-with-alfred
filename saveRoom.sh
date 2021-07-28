mkdir -p ./storage/$1
echo -n "$1" > ./storage/$1/name
echo -n "$meetingid" | sed -n "s/.*zoom.us\/j\/\([^']*\)\?pwd\=.*/\1/p" > ./storage/$1/id
A=($( echo "$meetingid" | tr '=' "\n"))
echo -n ${A[1]} > ./storage/$1/passwd