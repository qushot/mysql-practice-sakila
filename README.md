# mysql-practice-sakila
MySQL練習用のDockerコンテナ。公式データサンプルのSakilaを読み込む。

## 使い方

### ビルド
`docker build -t sakila .`

### 起動
`docker run --name sakila -d sakila`

### 接続
`docker container exec -it sakila mysql -uroot -proot -Dsakila`
