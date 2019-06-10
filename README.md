
# Carrierwave
Carrierwave provides a simple and extremely flexible way to upload files from Ruby applications. It works well with Rack based web applications, such as Ruby on Rails.

## Prerequisites:
You will need the following things properly installed on your computer.
* ruby -v ~ 2.5.1
* rails -v ~ 5.2.3

## Installation:
* git clone https://github.com/rorong/cloud-storage.git
* bundle install
* rails db:setup && rails db:migrate

## Running / Development:
* rails s

# Integrate Carrierwave with Rails app
Add to Gemfile:

```
gem 'carrierwave'
gem 'carrierwave-aws' # To use carrierwave to save files on aws S3 bucket
```
Bundle it!

```
bundle install
```
