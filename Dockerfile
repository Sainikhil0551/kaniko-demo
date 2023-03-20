FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /apps
COPY out .
EXPOSE 80
ENTRYPOINT ["dotnet", "ActivityStore.dll","--urls", "http://*:80","--no-https"]
