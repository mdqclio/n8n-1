FROM n8nio/n8n:latest

ENV N8N_PORT=10000
ENV WEBHOOK_URL=https://n8n-1-1.onrender.com
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Asegurarse de que n8n está instalado globalmente
RUN npm install -g n8n

# Exponer el puerto que se usará
EXPOSE 10000

# Generar la clave de cifrado
RUN n8n encryption-key

# Comando para iniciar n8n
CMD ["n8n"]
