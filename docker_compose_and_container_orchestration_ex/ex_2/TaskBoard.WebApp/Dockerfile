# See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile

# Base image for runtime
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

# Base image for build
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src

# Copy csproj files for each project
COPY ["TaskBoard.WebApp/TaskBoard.WebApp.csproj", "TaskBoard.WebApp/"]
COPY ["TaskBoard.Data/TaskBoard.Data.csproj", "TaskBoard.Data/"]

# Restore dependencies
RUN dotnet restore "TaskBoard.WebApp/TaskBoard.WebApp.csproj"

# Copy the full source code
COPY . .

# Set working directory to WebApp
WORKDIR "/src/TaskBoard.WebApp"

# Build the project
RUN dotnet build "TaskBoard.WebApp.csproj" -c Release -o /app/build

# Publish the project
FROM build AS publish
RUN dotnet publish "TaskBoard.WebApp.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Final runtime image
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "TaskBoard.WebApp.dll"]
