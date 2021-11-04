# MySQL公式のサンプルデータベースを使う

# ソース・ファイルをダウンロードする
公式サイトからデータベースのソースファイルがダウンロードできる。  
PDF形式の手順書も確認できる。  
https://dev.mysql.com/doc/index-other.html

ソースファイルは`Gzip形式`や`Zip形式`でダウンロードできる。

`SOURCEコマンド`でソースファイルをインポートする。

```
mysql> SOURCE /Users/ユーザー名/downloads/world.sql;
Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)
```

