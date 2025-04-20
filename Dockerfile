FROM n8nio/n8n

ENV N8N_PORT=10000
ENV WEBHOOK_URL=https://n8n-1-1.onrender.com

EXPOSE 10000

CMD ["n8n"]
