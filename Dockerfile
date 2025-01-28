# ベースイメージ（軽量なOpenJDK）
FROM eclipse-temurin:17-jdk-alpine

# 作業ディレクトリを設定
WORKDIR /app

# プロジェクトのJARファイルをコピー
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo-0.0.1-SNAPSHOT.jar

# アプリケーションを実行
ENTRYPOINT ["java", "-jar", "/app/demo-0.0.1-SNAPSHOT.jar"]