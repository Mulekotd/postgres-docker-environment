#!/bin/bash

# Carregar as variáveis do arquivo .env
export $(grep -v '^#' .env | xargs)

BACKUP_FILE="./backups/postgres_backup_$(date +%Y%m%d%H%M%S).sql"
VOLUME_PATH="./postgres-data"

DB_NAME="${POSTGRES_DB}"
DB_USER="${POSTGRES_USER}"
DB_PSWD="${POSTGRES_PSWD}"

echo "Criando backup do banco de dados PostgreSQL..."
docker exec -t postgres pg_dump -U $DB_USER -F p -d $DB_NAME --schema=public --no-owner --no-privileges > $BACKUP_FILE

if [ $? -eq 0 ]; then
    echo "Backup criado com sucesso: $BACKUP_FILE"
else
    echo "Erro ao criar o backup. O processo de atualização será interrompido."
    exit 1
fi

echo "Parando e removendo os containers existentes..."
docker-compose down

echo "Construindo e subindo os containers com as versões mais recentes..."
docker-compose up --build -d

echo "Verificando o status dos serviços..."
docker-compose ps

echo "Processo de atualização concluído."

