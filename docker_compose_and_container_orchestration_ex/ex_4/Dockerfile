# Use the official .NET 9.0 SDK image for building the app
FROM mcr.microsoft.com/dotnet/sdk:9.0-preview AS build

WORKDIR /src
COPY . .

# Restore dependencies
RUN dotnet restore

# Build the application
RUN dotnet publish -c Release -o /app/publish

# Use the ASP.NET runtime image for running the app
FROM mcr.microsoft.com/dotnet/aspnet:9.0-preview AS runtime

WORKDIR /app
COPY --from=build /app/publish .

# Set the entrypoint
ENTRYPOINT ["dotnet", "TaskBoard.dll"]
