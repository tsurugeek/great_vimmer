# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

2.6.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

## Scaffold memo

bundle exec rails d model grade
bundle exec rails g model grade title:string published:boolean grade_num:integer
bundle exec rails d model question
bundle exec rails g model question sentence:string answer:string published:boolean

bundle exec rails d scaffold_controller admin/grade
bundle exec rails g scaffold_controller admin/grade title:string published:boolean grade_num:integer --model-name=grade
bundle exec rails d scaffold_controller admin/question
bundle exec rails g scaffold_controller admin/question sentence:string answer:string published:boolean --model-name=question
