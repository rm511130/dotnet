# This script changes the standard Dot Net MVC demo to say "Welcome User1"
# and sets the URL entry point to http://0.0.0.0:5001

cd ~/dotnet
sed -i "s/Welcome/Welcome User$my_number/g" ~/dotnet/Views/Home/Index.cshtml
cat ~/dotnet/Program.cs | awk '{ if (NR==24) printf("                    webBuilder.UseUrls(\"http://0.0.0.0:5001\");\n"); print $0; }' > ~/dotnet/Program-v2.cs
mv ~/dotnet/Program-v2.cs ~/dotnet/Program.cs

