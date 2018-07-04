#!/usr/bin/env ruby
# coding:utf-8

require 'sinatra'
require 'sinatra/reloader'
require 'haml'


$pokureru 
configure do 
  $pokureru = true
  set :environment, :production
  #Haml::Template.options[:ugly] = true  
end
before do
end

get '/' do
  haml :index
end

get '/api' do
  content_type :json
  p $pokureru
  if $pokureru then 
# 木魚を打つ処理
    $pokureru = false
    `./poku.py`
    $pokureru = true
    {sound:"poku",info:"日本の心、和の心。"}.to_json
  else 
    {sound:"not_poku",info:"叩けませんでした。"}.to_json
  end 
end


