require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse!
  end

  get '/square/:number' do
     number = params[:number].to_i
    answer = number * number
    answer.to_s
  end

  get '/say/:number/:phrase' do
    count = params[:number].to_i
    array = []
    count.times do
      array << params[:phrase]
    end
    array.join(" ")
  end
end
