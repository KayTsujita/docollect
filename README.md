# README
# テーブル設計

## users テーブル
| Column             | Type    | Options                  |
| ------------------ | ------- | ------------------------ |
| email              | string  | null: false, unique:true |
| encrypted_password | string  | null: false              |
| last_name          | string  | null: false              |
| first_name         | string  | null: false              |
| last_name_kana     | string  | null: false              |
| first_name_kana    | string  | null: false              |


### Association
- has_many :groups
- has_many :messages
- has_many :documents


## groups テーブル
| Column                | Type          | Options                        |
| --------------------- | ------------- | ------------------------------ |
| group_name            | string        | null: false                    |
| group_image           | string        | null: false                    |
| user_id               | references    | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :documents


## documents テーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| document_title     | string     | null: false                    |
| description        | text       | null: false                    |
| document_image     | references | null: false                    |
| user_id            | references | null: false, foreign_key: true |
| group_id           | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :group
- has_many :doc_tags
- has_many :tags, through: :doc_tag


### messages テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| content               | references | null: false                    |
| user_id               | references | null: false, foreign_key: true |
| document_id           | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :document


### tags テーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| tag_name           | references | null: false                    |

### Association
- has_many :doc_tags
- has_many :documents, through: :doc_tag


### doc_tags テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| document_id           | string     | null: false, foreign_key: true |
| tag_id                | string     | null: false, foreign_key: true |

### Association
- belongs_to :document
- belongs_to :tag