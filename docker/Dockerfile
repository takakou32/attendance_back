# ベースイメージとしてMySQL公式イメージを使用
FROM mysql:8.0

# 環境変数を設定
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=mydb
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=userpassword

# タイムゾーンを日本時間に設定
ENV TZ=Asia/Tokyo

# SQLファイルとシェルスクリプトをコピー
COPY create_attendance_system.sql /docker-entrypoint-initdb.d/
COPY drop_tables.sql /docker-entrypoint-initdb.d/
COPY insert_sample_data.sql /docker-entrypoint-initdb.d/
COPY execute_sql.sh /docker-entrypoint-initdb.d/

# シェルスクリプトに実行権限を付与
RUN chmod +x /docker-entrypoint-initdb.d/execute_sql.sh

# ポート3306を公開
EXPOSE 3306

# コンテナ起動時に実行されるコマンド
CMD ["mysqld"]