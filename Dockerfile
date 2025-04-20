FROM n8nio/n8n:latest

# Instalar sudo para el usuario node
USER root
RUN apk add --no-cache sudo

# Volver al usuario node
USER node

# Asegurarse de que n8n esté instalado globalmente con sudo
RUN sudo npm install -g n8n

# Configuraciones adicionales
ENV N8N_PORT=10000
ENV WEBHOOK_URL=https://n8n-1-1.onrender.com
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Exponer el puerto que se usará
EXPOSE 10000

# Generar la clave de cifrado
RUN n8n encryption-key

# Comando para iniciar n8n
CMD ["n8n"]
