class Player
  attr_reader :name, :HP
  
  def initialize(name)
    @name = name
    @HP = 60
  end

  def deduct
    @HP -= 10
  end
  
end