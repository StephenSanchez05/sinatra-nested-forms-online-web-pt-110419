require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :new
    end
     
     post '/pirate' do
       @pirate = Pirate.new(params[:pirate])
       
       params[:pirate][:ship].each do |n|
         Ship.new(n)
       end
       @ship = Ship.all
       
       erb :show
    end
  

