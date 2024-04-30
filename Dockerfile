# Utilise une image de base officielle Node.js
FROM node:14-alpine

# Définis le répertoire de travail dans le conteneur
WORKDIR /app

# Copie les fichiers package.json et package-lock.json
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie les dossiers nécessaires
COPY public public/
COPY src src/

# Expose le port sur lequel l'application va tourner
EXPOSE 3000

# Lance l'application
CMD ["npm", "start"]
