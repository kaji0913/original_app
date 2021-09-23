# テーブル設計

## users テーブル
| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| name                | string     | null: false                    |
| nickname            | string     | null: false, unique: true      |
| email               | string     | null: false, unique: true      |
| encrypted_password  | string     | null: false                    |
| age                 | integer    | null: false                    |
| work_kind_id        | integer    | null: false                    |
| role_id             | integer    | null: false                    |
| work_year           | integer    | null: false                    |
| profile             | string     |                                |

### Association
- has_many :posts
- has_many :comments


## posts テーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| title                  | string     | null: false                    |
| writer                 | string     | null: false                    |
| genre_id               | integer    | null: false                    |
| degree_of_difficult_id | integer    | null: false                    |
| to_whom                | text       | null: false                    |
| overview               | text       | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments
- has_one_attached :image


## comment テーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| comment                | text       | null :false                    |
| user                   | references | null :false, foreign_key: true |
| post                   | references | null :false, foreign_key: ture |

### Association
- belongs_to :user
- belongs_to :post