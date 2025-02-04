### Java & mysql & docker の環境構築手順

1. mvn のインストール
2. java のインストール

### docker コンテナに入る

```

docker exec -it mysql-container bash
```

### コードの修正後以下コマンドでコンテナを立ち上げ直して、レスポンスを確認する

```
docker compose restart app
```

### mysql に入る

```

mysql -u root -p
```

データベース選択

```
use db 名
```

テーブル作成

```

create table demo.users(id int,name varchar(10));
```

データ挿入

```

insert into users values (1, 'Yamada');
```

dump する方法

```

docker exec -i mysql-container mysqldump -u root -p demo > dump.sql
```
