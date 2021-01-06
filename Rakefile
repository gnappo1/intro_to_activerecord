require 'sinatra/activerecord/rake'
require_relative './config/environment'

def reload
    load_all "./app" if Dir.exists?("./app")
end

desc "Load a Pry interactive playground with everthing already pre-loaded"
task :console do
    puts "Reloading your application..."
    reload
    puts "Starting console:"
    Pry.start
end