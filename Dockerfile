# Utiliser une image Python comme base
FROM python:3.8-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires dans le conteneur
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port si votre application utilise un serveur (par exemple Flask)
EXPOSE 5000

# Définir la commande pour exécuter l'application
CMD ["python", "main.py"]

