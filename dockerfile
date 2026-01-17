#Image de base
FROM python:3.10-slim
#information 
LABEL maintenance ="laouratoudbah@gmail.com"
#Dossier de travail
WORKDIR /app
#Copier et installer des dependances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
#Copier le code source
COPY app.py .
#Exposer le port
EXPOSE 5000
#Commande pour demarrer l'application
CMD ["python", "app.py"]