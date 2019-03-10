# README

## memberテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

## userテーブル


## messageテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|null: false, foreign_key: true|
|image|text|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

## groupテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false, foreign_key: true|



## Associations
- belongs_to :group
- belongs_to :user






















This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
