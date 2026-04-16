FROM node:20-alpine

WORKDIR /app

# Copie les fichiers de dépendances
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie tout le code
COPY . .

# Crée le dossier /tmp pour persister les données
RUN mkdir -p /tmp

# Expose le port
EXPOSE 3000

# Démarre l'application
CMD ["node", "app.js"]