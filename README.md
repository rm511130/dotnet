# dotnet
.NET Core Welcome

- Using a Linux VM, that has [`dotnet`](https://dotnet.microsoft.com/download/dotnet-core/3.1) installed, and execute the following commands:

```
git clone https://github.com/rm511130/dotnet.git 
cd ~/dotnet
dotnet new global
dotnet new mvc 
sed -i "s/Welcome/Welcome Traveller/g" ~/dotnet/Views/Home/Index.cshtml
dotnet run --urls http://0.0.0.0:5001
```

- Now you can use a browser to access your .NET Core Welcome App at `http://127.0.0.1:5001`

- Now, if your Linux VM also has [`docker`](https://docs.docker.com/engine/install/) installed, you can execute the following commands:

```
dotnet publish -c Release
docker build -t dotnet-core-welcome -f Dockerfile .
docker run -d -p 80:80 --name dotnet-core-welcome dotnet-core-welcome
```

- Now you can use a browser to access your .NET Core Welcome App, running as a Docker Image, at `http://127.0.0.1`

That's all for now.
