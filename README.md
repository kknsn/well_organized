# テーブル設計

## users テーブル

| Column      | Type   | Options                   |
| ----------- | ------ | ------------------------- |
| family_name | string | null: false               |
| first_name  | string | null: false               |
| email       | string | null: false, unique: true |
| password    | string | null: false               |

### Association

- has_many :books
- has_many :likes

## books テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| tittle     | string     | null: false                    |
| genre_id   | integer    | null: false                    |
| thought    | string     | null: false                    |
| motivation | string     |                                |
| important  | string     |                                |
| reason     | string     |                                |
| personal   | string     |                                |
| act        | string     |                                |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :likes

## likes テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| book   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :book