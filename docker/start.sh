#!/bin/bash

# エラーが発生した場合にスクリプトを停止
set -e

# 変数の設定
IMAGE_NAME="mysql-custom"
CONTAINER_NAME="mysql-container"
HOST_PORT=3306
CONTAINER_PORT=3306

echo "MySQLのDockerイメージをビルドしています..."
docker build -t $IMAGE_NAME .

echo "古いコンテナが存在する場合は停止して削除します..."
docker stop $CONTAINER_NAME 2>/dev/null || true
docker rm $CONTAINER_NAME 2>/dev/null || true

echo "新しいMySQLコンテナを起動しています..."
docker run -d -p $HOST_PORT:$CONTAINER_PORT --name $CONTAINER_NAME $IMAGE_NAME

echo "コンテナの状態を確認しています..."
docker ps | grep $CONTAINER_NAME

echo "セットアップが完了しました。MySQLサーバーは次のアドレスで利用可能です: localhost:$HOST_PORT"