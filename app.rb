require 'sinatra'
require_relative 'coins.rb'

get '/' do
	erb :index
end

get '/coins.asp' do
	erb :coins
end

post '/user_change' do
    cents_given_to_me = params[:cents_given_to_me]
    coins_given_to_customer = params[:coins_given_to_customer]
    coins_given_to_customer = coin_changer(cents_given_to_me)
    redirect '/results?cents_given_to_me=' + cents_given_to_me + '&coins_given_to_customer=' + coins_given_to_customer
end

get '/results' do
    cents_given_to_me = params[:cents_given_to_me]
    coins_given_to_customer = params[:coins_given_to_customer]
    erb :results, :locals => {:cents_given_to_me => cents_given_to_me, :coins_given_to_customer => coins_given_to_customer}
end