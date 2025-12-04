FROM node:14-alpine

# Installer git et python
RUN apk add --no-cache git python3 make g++

# Cloner le dépôt
RUN git clone -q https://github.com/najasoft/todo-app.git

# Dossier courant
WORKDIR /todo-app

# Copier les fichiers dans le container
COPY . .

# Installer les dépendances
RUN yarn install --production

# Démarrer l'application
CMD ["node", "/src/index.js"]
