# SQL

学習用オンラインSQL実行環境<br>
https://dokoql.com/

学習者用手順紹介サイト<br>
https://sukkiri.jp/technologies

コードダウンロード<br>
https://sukkiri.jp/

DBMS製品のインストール手順(OSS)<br>

|製品名|URL|
|---|---|
|MySQL|https://devnote.jp/MySQL|
|MariaDB|https://sukkiri.jp/MariaDB|
|PostgreSQL|https://sukkiri.jp/PostgreSQL|
|SQLite|https://sukkiri.jp/SQLite|
|H2Database|https://sukkiri.jp/H2|


# 4種類の命令
|DML :<br> Data Mnipulation Language|DDL :<br> Data Definition Language|
|---|---|
|- SELECT<br> - INSERT<br> - UPDATE<br> - DELETE<br> - EXPLAIN<br> - LOCK TABLE|- CREATE<br> - ALTER<br> - DROP<br> - TRUNCATE|
|データ操作言語:<br>データの格納や取り出し、更新、削除などの命令|データ定義言語:<br>テーブルなどの作成や削除、各種設定などの命令|

|TCL :<br> Transaction Control Language|DCL :<br> Data Control Language|
|---|---|
|- COMMIT<br> - ROLLBACK<br> - SET TRANSACTION<br> - SAVE POINT|- GRANT<br> - REVOKE|
|トランザクション制御言語:<br>トランザクションの開始や終了の命令|データ制御言語:<br>DMLやDDLの利用に関する許可や禁止を設定する命令|

# 代表的なデータ型
|データ種別|区分|代表的なデータ型名|
|---|---|---|
|数値|整数値|INTEGER型|
|数値|少数値|DECIMAL型, REAL型|
|文字列|固定長|CHAR型|
|文字列|可変長|VARCHAR型|
|日付と時刻|---|DATETIME型, DATE型, TIME型|


# 4大命令
|命令|各命令で固有の部分|対象行の絞り込み|検索の加工|
|---|---|---|---|
|SELECT|列名... FROM テーブル名|WHERE|その他修飾|
|UPDATE|テーブル名 SET 列名=値 ... |WHERE|---|
|DELETE|FROM テーブル名|WHERE|---|
|INSERT|INTO テーブル名 (列名...)<br>VALUES (値...)||---|

# 4大命令の分類方法(1) 検索系と更新系
検索系：SELECT<br>
更新系：UPDATE, DELETE, INSERT

# 4大命令の分類方法(2) 既存系と新規系
既存系：SELECT, UPDATE, DELETE<br>
新規系：INSERT

# 4大命令のすべてに共通すること
処理対象とするテーブル名を必ず指定する必要がある。

# 条件式
## NULLの判定
・NULLであることを判定する  
式 IS NULL  
・NULLでないことを判定する  
式 IS NOT NULL

NULLは=で判定できない  
NULLは「=」や[<>]では判定できない。必ずIS NULL や IN NOT NULL を使って条件式を作ること。  

## LIKE演算子によるパターンマッチング
式 LIKE パターン文字列  

## BETWEEN演算子による範囲判定
式 BETWEEN 値1 AND 値2  

## IN演算子による複数値との比較
式 IN ( 値1, 値2, 値3, ... )  
式 NOT IN ( 値1, 値2, 値3, ... )  

## ANY / ALL 演算子による複数値との比較
・値リストのそれぞれと比較して、いずれかが真なら真  
式 基本比較演算子 ANY ( 値1, 値2, 値3, ... )  
・値リストのそれぞれと比較して、すべて真なら真
式 基本比較演算子 ALL ( 値1, 値2, 値3, ... )  

※基本比較演算子とは「=」,「<」,「>」,「<=」,「>=」,「<>」  



# 主キー
主キーとなる列が持つべき特性  
・必ず何らかのデータが格納される(NULLではない)。  
・ほかの行と値が重複しない  

