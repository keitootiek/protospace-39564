#テーブル設計

##usersテーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | -------------------------|
| name               | string | null: false ,unique: true|
| email              | string | null: false              |
| encrypted_password | string | null: false              |
| profile            | text   | null: false              |
| occupation         | text   | null: false              |


###Association
-has_many: prototype
-has_many: comments


##prototypeテーブル

| Column             | Type         | Options                      |
| ------------------ | -------------| -----------------------------|
| title              | string       | null: false                  |
| catch_copy         | text         | null: false                  |
| concept            | string       | null: false                  |
| user               | references   | null: false,foreign_key: true|

###Associations
-belongs_to: users
-has_many: comments


##commentsテーブル

| Column             | Type         | Options                      |
| ------------------ | -------------| -----------------------------|
|content             |text          |null: false                   |  
|prototype           |reference     |null: false,foreign_key: true |   
|user                |reference     |null: false,foreign_key: true |

###Association
-belongs_to: users
-belongs_to: prototype