# Usa a imagem oficial do Bun
FROM oven/bun:1

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos de dependência
COPY package.json bun.lockb ./

# Instala as dependências
RUN bun install

# Copia o restante do código
COPY . . 

# Expõe a porta 3333
EXPOSE 3333

# Comando para rodar a aplicação
CMD ["bun", "run", "dev"]