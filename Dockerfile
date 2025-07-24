# Base image
FROM node:20

# App directory banaye container ke andar
WORKDIR /app

# package.json aur package-lock.json copy karo
COPY package*.json ./

# Dependencies install karo
RUN npm install

# Baaki files copy karo
COPY . .

# App expose karo on port 3000
EXPOSE 3000

# Start command
CMD ["node", "index.js"]
