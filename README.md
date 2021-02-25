## usersテーブル

  |Column             |Type Option | Options                  |
  |------------------ |------------|------------------------- |
  |nickname           | string     | null: false              |
  |email              | string     | null: false unique: true |
  |encrypted_password | string     | null: false              |
  |first_name         | string     | null: false              |
  |last_name          | string     | null: false              |
  |first_name_ruby    | string     | null: false              |
  |last_name_ruby     | string     | null: false              |
  |birth_day          | days       | null: false              |
  

### Association
 -  has_many :orders



## ordersテーブル

  |Column             |Type Option  | Options                         |
  |------------------ |-------------|-------------------------------- |
  |product            | references  | null: false, foreign_key: true  |
  |user               | references  | null: false, foreign_key: true  |
  

  

### Association
 -  belongs_to :product
 -  belongs_to :user
 -  has_one    :addresses




 ### addressesテーブル

 | Column        | Type Option | Options                        |
 | ------------- | ----------- | ------------------------------ |
 | postal_code   | string      | null: false                    | 
 | prefecture_id | integer     | null: false                    |
 | address       | string      | null: false                    |
 | building      | string      |                                |
 | phone         | string      | null: false                    |
 | order         | references  | null: false, foreign_key: true |

### Association
 - belongs_to :order


 ### farmer_usersテーブル

 | Column             | Type Option | Options                  |
 | ------------------ | ----------- | ------------------------ |
 | name               | string      | null: false              |
 | name_ruby          | string      | null: false              |
 | from               | string      | null: false              |
 | firm_name          | string      |                          |
 | email              | string      | null: false unique: true |
 | encrypted_password | string      | null: false              |
 | introduction       | text        | null: false              |
 

### Association
 - has_many :products
 - has_many :comments


 ### productsテーブル

 | Column      | Type Option | Options                        |
 | ----------- | ----------- | ------------------------------ |
 | product     | string      | null: false                    |
 | description | text        | null: false                    |
 | price       | integer     | null: false                    |
 | amount      | integer     | null: false                    |
 | unit_id     | integer     | null: false                    |
 | farmer_user | references  | null: false, foreign_key: true |

 ### Association
 - belongs_to :farmer_user
 - has_many :comments
 - has_one :order


### commentsテーブル

 | Column      | Type Option | Options                        |
 | ----------- | ----------- | ------------------------------ |
 | comment     | string      | null: false                    |
 | product     | references  | null: false, foreign_key: true |
 | farmer_user | references  | null: false, foreign_key: true |

 ### Association
 - belongs_to :farmer_user
 - belongs_to :product
