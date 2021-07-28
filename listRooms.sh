echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?><items>"
for dir in storage/*
do
    echo "<item uid=\"$(basename $dir)\" valid=\"YES\" autocomplete=\"$(cat $dir/id)\">"
           echo "<title>$(basename $dir)</title>"
            echo "<subtitle>$(cat $dir/id)</subtitle>"
            echo '<icon>/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/Everyone.icns</icon>'
            echo "<arg>join?action=join&amp;confno=$(cat $dir/id)&amp;pwd=$(cat $dir/passwd)</arg>"
    echo "</item>"
done

echo "<item uid=\"y\" valid=\"YES\">"
echo "<title>Start new meeting</title>"
echo "<icon>/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/Actions.icns</icon>"
echo "<arg>start</arg>"
echo "</item>"

echo "<item uid=\"z\" valid=\"YES\">"
echo "<title>Enter ID</title>"
echo "<subtitle>Directly enter an ID</subtitle>"
echo "<icon>/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/MagnifyingGlassIcon.icns</icon>"
echo "<arg>join?action=join&amp;confno=$1</arg>"
echo "</item>"

echo "</items>"