#!/bin/bash

# Dockerfileの環境変数を使用
HOST="localhost"
USER="$MYSQL_USER"
PASSWORD="$MYSQL_PASSWORD"
DATABASE="$MYSQL_DATABASE"

# 実行するSQLファイル
DROP_TABLE_SQL="/docker-entrypoint-initdb.d/drop_tables.sql"
CREATE_TABLE_SQL="/docker-entrypoint-initdb.d/create_attendance_system.sql"
INSERT_DATA_SQL="/docker-entrypoint-initdb.d/insert_sample_data.sql"

# MySQLサーバーが起動するまで待機
until mysqladmin ping -h"$HOST" --silent; do
    echo "Waiting for MySQL to be ready..."
    sleep 2
done

# テーブル作成SQLファイルを実行
echo "Droping tables..."
mysql -h $HOST -u $USER -p$PASSWORD $DATABASE < $DROP_TABLE_SQL

echo "Creating tables..."
mysql -h $HOST -u $USER -p$PASSWORD $DATABASE < $CREATE_TABLE_SQL

# サンプルデータ挿入SQLファイルを実行
echo "Inserting sample data..."
mysql -h $HOST -u $USER -p$PASSWORD $DATABASE < $INSERT_DATA_SQL

echo "SQL files executed successfully."