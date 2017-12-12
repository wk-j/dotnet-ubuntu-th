## .NET Core on Ubuntu 16.04 with Thai Locale

Try to reproduce

- https://github.com/dotnet/cli/issues/8047
- https://github.com/dotnet/cli/blob/c266e398cf55df0667b76b3afc7930b6caeeace9/test/Microsoft.DotNet.Tools.Tests.Utilities/TestBase.cs#L33
- https://github.com/dotnet/cli/issues/7585

```
docker build -t wk-ubuntu-1604 .
docker rm  -f wk-ubuntu-1604
docker run -it --name wk-ubuntu-1604 wk-ubuntu-1604 

dotnet new console -lang F#
dotnet new console -lang C#
dotnet run

export DOTNET_CLI_UI_LANGUAGE=en-US
dotnet --info
dotnet --version
```