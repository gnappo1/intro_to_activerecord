#the following two lines make sure that all the gems from the Gemfile are automatically required
require 'bundler/setup'
Bundler.require 

#require_all is a gem and requires a folder and all the files contained within that folder
require_all 'app'
require "sinatra/activerecord"
require 'sinatra'

#use this version if you do not run into any issues when running migrations
# ActiveRecord::Base.establish_connection(
#     adapter: 'sqlite3',
#     database: 'db/development.db'
# )

#if you run into issues creating migration files or migrating the files
#it might be due to the fact that establish_connection has been deprecated in activerecord 6.x or up
# so use the following line and make sure you also require sinatra like we do on line 8
set :database, {adapter: "sqlite3", database: "db/development.db"}
