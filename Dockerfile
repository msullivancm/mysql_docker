# Use a imagem oficial do MySQL 5.7
FROM mysql:5.7

# Define variáveis de ambiente para a senha do MySQL
ENV MYSQL_ROOT_PASSWORD=senha
ENV MYSQL_DATABASE=p12hml
ENV MYSQL_INITDB_ARGS="--character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci"

# Adiciona um script SQL ao diretório de scripts de inicialização do Docker
ADD change_authentication.sql /docker-entrypoint-initdb.d

# Expõe a porta 3306
EXPOSE 3306
