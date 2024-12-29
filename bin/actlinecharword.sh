"Enter the filename:"
read filename
if [ -f "$filename" ] then
lines=$(wc -l < "$filename")
words=$(wc -w < "$filename")
chars=$(wc -c < "$filename")
echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $chars"
else
echo "File does not exist."
fi