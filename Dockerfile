# Utilisation de l'image Python officielle
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires dans le conteneur
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Exposer le port 5000
EXPOSE 5000

# Commande pour exécuter l'application
CMD ["python", "app.py"]
