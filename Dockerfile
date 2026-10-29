FROM node:lts-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --ignore-scripts

# Copy application code
COPY . .

# Build the application
RUN npm run build

EXPOSE 8000

CMD ["node", "build/index.js"]
