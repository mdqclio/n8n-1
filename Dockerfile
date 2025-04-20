FROM n8nio/n8n:latest

ENV N8N_PORT=10000
ENV WEBHOOK_URL=https://n8n-1-1.onrender.com
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

EXPOSE 10000
RUN npm install -g n8n
RUN n8n encryption-key


CMD ["n8n"]

