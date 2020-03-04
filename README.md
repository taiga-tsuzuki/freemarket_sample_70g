# README

## usersテーブル ※gem deviseを利用する
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|  ※devise導入時に自動生成
|password|string|null: false|             ※devise導入時に自動生成

### Association
- has_many :items
- has_one :profile
- has_many :comments
- has_one :credit_card
- has_one :location


## profileテーブル
|Column|Type|Options|
|------|----|-------|
|first_name|string|null: false|
|family_name|string|null: false|
|first_name_kana|string|null: false|
|family_name_kana|string|null: false|
|birth_year|date|null: false|
|birth_month|date|null: false|
|birth_day|date|null: false|
|introduction|text| - |
|user_image|string| - |
|user|references|null: false, foreign_key:true|

### Association
belongs_to :user


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|item_name|string|null: false|
|description|text|null: false|
|category|references|null: false, foreign_key: true|
|brand|references|foreign_key: true||
|price|intefer|null: false||
|size|string||
|condition|string|null: false|
|shipping_fee_payer|string|null: false|
|shipping_location|string|null: false|
|shipping_days|string|null: false|

### Association
- belongs_to :user
- has_many :images
- has_many :categories
- belongs_to :brand
- has_many :comments


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key:true|
|item|references|null: false, foreign_key:true|
|content|text|null: false|

### bAssociation
belongs_to :item
belongs_to :user


## Brandテーブル
|Column|Type|Options|
|------|----|-------|
|name|string| - |

### Association
has_many :items


## imagesモデル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item|references|null: false, foreign_key: true|

### Association
- belongs_to :item


## categoriesテーブル  ※gem ancestryを使う
|Column|Type|Options|
|------|----|-------|
|name|string||
|ancestry|string||

▼modelに以下を記述
has_ancestry

### Association
- has_many :items


## creditcardsテーブル  ※gem 'payjp'を使う
|Column|Type|Options|
|------|----|-------|
|user|reference|null: false, foreign_key: true|
number|intenger|
cvc|intenger|
exp_year|intenger|
exp_month|intenger|
amount|intenger|　　#支払金額
card|intenger|　　　#顧客ID
currency|string|　　#通貨

### Association
belongs_to :user


## locationテーブル  ※配送先
|Column|Type|Options|
|------|----|-------|
|user|reference|null: false, foreign_key: true|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|postal_code|integer|null: false|
|prefectures|string|null: false|
|city|string|null: false|
|address|integer|null: false|
|building_name|string| |
|phone_number|integer| |

### Association
belongs_to :user