echo "Execute without input:"
echo "'dotnet build `/bl:no-input-01.msbuild'"
dotnet build /bl:01-no-input.binlog
echo "============================="
echo ""
echo "Execute without input again (still executed):"
echo "'dotnet build `/bl:02-no-input.binlog'"
dotnet build /bl:02-no-input.binlog
echo "============================="
echo ""
echo "Create sample input and execute:"
echo "'echo `"aaa`" `> in.txt'"
echo "aaa" > in.txt
echo "'dotnet build `/bl:03-new-input.binlog'"
dotnet build /bl:03-new-input.binlog
echo "============================="
echo ""
echo "Execute without changing input again (skipped, but the one with missing output executed):"
echo "'dotnet build `/bl:04-same-input.binlog'"
dotnet build /bl:04-same-input.binlog
echo "============================="
echo ""
echo "Create sample output and execute (second skipped - output upd to date):"
echo "'echo `"aaa`" `> out2.txt'"
echo "aaa" > out2.txt
echo "'dotnet build `/bl:05-new-output.binlog'"
dotnet build /bl:05-new-output.binlog
echo "============================="