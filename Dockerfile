# Use uma imagem base do Node.js
FROM node:14-alpine

# Defina o diretório de trabalho no container
WORKDIR /app

# Copie o arquivo package.json para o diretório de trabalho
COPY package.json .

# Instale as dependências do projeto
RUN npm install

# Copie o restante dos arquivos do projeto para o diretório de trabalho
COPY . .

# Exponha a porta 3000 para acesso via navegador
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "index.js"]
