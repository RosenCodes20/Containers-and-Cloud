# Stage 1: Development base
FROM node:lts-bookworm AS development

# Install Git
RUN apt-get update && apt-get install -y git --no-install-recommends && rm -rf /var/lib/apt/lists/*

# Create app directory
WORKDIR /usr/src/app

# Copy dependency definitions and install
COPY package.json package-lock.json ./
RUN npm ci

# Copy the rest of the app
COPY . .

# Expose app port
EXPOSE 3000

# Default start command
CMD ["npm", "start"]

# Stage 2: Development environment with Docker CLI
FROM development AS dev-envs

# Add user and groups
RUN groupadd docker && \
    useradd -s /bin/bash -m vscode && \
    usermod -aG docker vscode

# Install Docker CLI (from prebuilt image)
COPY --from=gloursdocker/docker / /

# Optional: re-define default command
CMD ["npm", "start"]
