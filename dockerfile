# Utilise l'image Nginx officielle comme base
FROM nginx:alpine

# Copie les fichiers HTML dans le répertoire par défaut de Nginx
COPY . /usr/share/nginx/html

# Expose le port 80
EXPOSE 80