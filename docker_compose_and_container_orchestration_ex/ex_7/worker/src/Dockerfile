# Stage 1: Build
FROM mcr.microsoft.com/dotnet/sdk:3.1 AS builder

WORKDIR /app

# Copy csproj and restore dependencies
COPY src/Worker/*.csproj ./Worker/
WORKDIR /app/Worker
RUN dotnet restore

# Copy everything else and build
COPY src/Worker/. ./
RUN dotnet publish -c Release -o out

# Stage 2: Runtime
FROM mcr.microsoft.com/dotnet/aspnet:3.1

WORKDIR /app

COPY --from=builder /app/Worker/out ./

# Replace Worker.dll with your actual DLL name (usually the project name)
ENTRYPOINT ["dotnet", "Worker.dll"]
