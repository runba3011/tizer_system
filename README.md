# データベース設計

## Usersテーブル
|column|type|options|example|
|-|-|-|-|
|nickname          |string  |null: false|表示するニックネーム|
|point             |integer |null: false|取得したポイント|
|lank              |integer |null: false|ユーザーランク|
|experience_point  |integer |null: false|ユーザーランク用のポイント（経験値のような物）|
|email             |string  |null: false|メールアドレス|
|encrypted_password|string  |null: false|パスワード|
|full_name         |string  |           |フルネーム（銀行振り込みする時に使うやつ、振り込みの時に保存するようにしてもいいかも）|
