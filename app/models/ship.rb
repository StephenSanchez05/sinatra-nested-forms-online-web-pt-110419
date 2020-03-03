class Ship
  
  attr_accessor :name, :type, :booty
  
  @@ships = []
  
  def initialize(params)
    @name = params[:name]
    @weight = params[:type]
    @height = params[:booty]
    @@ships << self
  end
  
  def self.all
    @@ships
  end
  
  def self.clear
    @@ships = []
  end
  
end