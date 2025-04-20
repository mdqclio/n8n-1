FROM n8nio/n8n:latest

# Cambiar al usuario root para permitir la instalación global
USER root

# Instalar n8n globalmente
RUN npm install -g n8n

# Volver al usuario node
USER node

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

