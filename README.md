## DB設計

### messages table
|Column|Type|Options|
|------|----|-------|
|text|text||
|image|string||
|user_id|references|foreign_key: true|
|group_id|references|foreign_key: true|

#### Association
belongs_to :user br
belongs_to :group

====================================================
### users table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,unique: true,index:true|

#### Association

has_many :messages br
has_many :groups,through:group_users  br
has_many :group_users

====================================================
### groups table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

#### Association

has_many :groups_users,through:group_users br
has_many :messages br
has_many :group_users

====================================================
### group_users table
|Column|Type|Options|
|------|----|-------|
|group_id|references|null: false,foreign_key: true|
|user_id|references|null: false,foreign_key: true|

#### Association
belongs_to :group br
belongs_to :user
