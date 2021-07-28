echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?><items>"
for dir in storage/*
do
    echo "<item uid=\"$(basename $dir)\" valid=\"YES\" autocomplete=\"$(cat $dir/id)\">"
           echo "<title>$(basename $dir)</title>"
            echo "<subtitle>$(cat $dir/id)</subtitle>"
            echo "<icon>/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ToolbarDeleteIcon.icns</icon>"
            echo "<arg>$(basename $dir)</arg>"
    echo "</item>"
done
echo "</items>"