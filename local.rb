#!/usr/bin/ruby
require 'rubygems'
require 'sinatra'

# For development - reloads every request
require "sinatra/reloader"

## CLASS DECLARATIONS HERE

## DECLARE YOUR MODULE HERE AND RESULTING CLASS FOR THE APPLICATION

module Project
class App < Sinatra::Application
  get '/' do
    @title = 'Home'
    erb :home
  end
  ## ADD THE REST OF YOUR CLASS HERE
end


# Uses the App class to run the actual code when application is called
if __FILE__ == $0
  Project::App.run!
end