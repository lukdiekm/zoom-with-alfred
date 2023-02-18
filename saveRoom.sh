mkdir -p ./storage/$1
echo -n "$1" > ./storage/$1/name
if [ $meetingurl ];then
    echo -n "$meetingid" | sed -n "s/.*zoom.us\/j\/\([^']*\)\?pwd\=.*/\1/p" > ./storage/$1/id
    A=($( echo "$meetingid" | tr '=' "\n"))
    echo -n ${A[1]} > ./storage/$1/passwd
else
    echo -n "$meetingid" > ./storage/$1/id
    echo -n "$meetingpwd" > ./storage/$1/passwd
fi