FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
ARG config=Debug
ARG netfolder=net5.0
ARG publish=publish
ARG source=bin/$config/$netfolder/$publish

EXPOSE 80
EXPOSE 443

WORKDIR /app
COPY ["$source","."]

ENTRYPOINT ["dotnet", "sampleapp.Views.dll"]
