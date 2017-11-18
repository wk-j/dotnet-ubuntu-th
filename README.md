## .NET Core on Ubuntu 16.04 with Thai Locale

Try to reproduce

- https://github.com/dotnet/cli/issues/8047

```
docker build -t wk-ubuntu-1604 .
docker rm  -f wk-ubuntu-1604
docker run -it --name wk-ubuntu-1604 wk-ubuntu-1604 
```