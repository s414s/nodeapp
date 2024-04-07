# Descargamos la imagen inicial 
FROM node:18-alpine
# Creamos y establecemos el directorio de trabajo
WORKDIR /app
# Copiamos el código fuente de la app
COPY . .
# Instalamos las dependencias antes para incluirlas
# en el container
RUN npm install --production
# Expecificamos el comando de consola necesario para hacer correr la app
CMD ["node", "src/index.js"]
# Añadimos el puerto que exponemos
EXPOSE 3000