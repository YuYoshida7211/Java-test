# ベースイメージ（軽量なOpenJDK）
FROM eclipse-temurin:17-jdk-alpine

# 作業ディレクトリを設定
WORKDIR /app

# 必要なパッケージをインストール（mavenやその他必要なもの）
RUN apk add --no-cache bash maven

# プロジェクトのソースコードをコピー
COPY src /app/src
COPY pom.xml /app

# Maven の依存関係をダウンロード
RUN mvn clean install

# ホットリロードを有効にする環境変数を設定
ENV JAVA_OPTS="-Dspring.devtools.restart.enabled=true -Dspring.devtools.livereload.enabled=true"

# アプリケーションを実行する
CMD ["mvn", "spring-boot:run", "-Dspring-boot.run.profiles=dev"]
