# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'pry'
gem 'rake'
gem 'sinatra'
gem 'sinatra-activerecord'
gem 'require_all'
gem 'rack'

group :development do 
    gem 'sqlite3' #best to be kept within a development group as in production we often switch to postgresql
    gem 'tux' #check it out here https://github.com/cldwalker/tux
end