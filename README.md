# README

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


For using Amazon S3 Storage you must set environment variables. In development mode using .env (.env not commited)
You must set next values:
- ACCESS_KEY_ID
- SECRET_ACCESS_KEY
- REGION
- BUCKET 

For using S3 Storage in test and production mode do not forget set next value in /config/environments/test.rb and production.rb
  config.active_storage.service = :amazon
