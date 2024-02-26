$env:prop8=""
echo "Execute without passing props"
echo "'dotnet build'"
dotnet build
echo "============================="
echo ""
echo "Execute with props from env"
echo "`$env:prop8=`"prop8-from-env`""
$env:prop8="prop8-from-env"
echo "'dotnet build'"
dotnet build
echo "============================="
echo ""
echo "Execute with passing global props"
echo "'dotnet build -p:prop8=prop8-global-val'"
dotnet build -p:prop8=prop8-global-val
echo "============================="