# README

## messages table
|Column|Type|Option|
|------|----|------|
|message|integer|null: false, foreign_key: true|
|date|integer|null: false, foreign_key: true|

## users table
|Column|Type|Option|
|------|----|------|
|name|string|null: false, foreign_key: true|
|e-mal|string|null: false, foreign_key: true|
|password|integer|null: false, foreign_key: true|

##groups table
|Column|Type|Option|
|------|----|------|
|name|integer|null: false, foreign_key: true|
|hostmember|integer|null: false, foreign_key: true|
|joinmember|integer|null: false, foreign_key: true|

## members table
|Column|Type|Option|
|------|----|------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

##Association













<!--
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

* ... -->
