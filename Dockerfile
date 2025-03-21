FROM node:20-alpine AS base
WORKDIR /app
COPY package.json package-lock.json* ./

# astro
RUN npm install --global astro && npm install

# nvim
RUN apk add neovim --no-cache

COPY . .
EXPOSE 4321
CMD ["npm", "run", "dev"]
