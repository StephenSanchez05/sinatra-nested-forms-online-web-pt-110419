require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end
    
    
     
     post '/pirates' do
       @pirate = Pirate.new(params[:pirate])
       
       params[:pirate][:ships].each do |n|
         Ship.new(n)
       end
       @ship = Ship.all
       
       erb :'pirates/'show
    end
  end
end 

