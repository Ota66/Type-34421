# テーブル設計

## users テーブル

| Column              | Type   | Options                   |
| ------------------- | ------ | ------------------------- |
| nickname            | string | null: false               |
| email               | string | null: false, unique: true |
| encrypted_password  | string | null: false               |

### Association

- has_many :scores

## scores テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| point       | integer    | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user