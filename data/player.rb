class Player

  attr_accessor :life
  attr_reader :name

  def initialize (name)
    @name = name
    @life = 3
    @current = 3
  end

  def decrease_life
    @current -= 1
  end
  
  def current_life
    "#{@current}/#{@life}"
  end

end