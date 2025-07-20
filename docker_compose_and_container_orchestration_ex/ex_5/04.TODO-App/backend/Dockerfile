# Stage 1: Base development environment
FROM node:lts-bookworm-slim AS development

# Create app directory
WORKDIR /usr/src/app

# Copy dependencies and install
COPY package.json package-lock.json ./
RUN npm ci

# Copy the rest of the application code
COPY . .

# Expose app port
EXPOSE 3000

# Stage 2: Dev environment with Git and Docker CLI
FROM development AS dev-envs

# Install Git
RUN apt-get update && apt-get install -y git --no-install-recommends && rm -rf /var/lib/apt/lists/*

# Add user and group for dev container
RUN groupadd docker && \
    useradd -m -s /bin/bash vscode && \
    usermod -aG docker vscode

# Install Docker CLI (buildx, compose, etc.)
COPY --from=gloursdocker/docker / /

# Default command to run dev server
CMD [ "npm", "run", "dev" ]
