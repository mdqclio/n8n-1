FROM n8nio/n8n

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /home/node

# Copiamos el contenido del repo al contenedor
COPY . .

# Instalamos las dependencias
RUN npm install

# Exponemos el puerto que usa n8n
EXPOSE 5678

# Comando para ejecutar n8n
CMD ["npm", "run", "start"]
