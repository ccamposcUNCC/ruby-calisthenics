class Dessert
  attr_accessor :name, :calories
  
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def healthy?
    @calories < 200
  end
  def delicious?
   true
  end
end

class JellyBean < Dessert
  
  def initialize(flavor)
    @name = flavor + " jelly bean"
    @calories = 5
  end
  
  def flavor=(flavor)
    @name = flavor " jelly bean"
  end
  
  def flavor
    @name.split(" ")[0]
  end
  
  def delicious?
   return true unless @name.split(" ")[0] == "licorice"
  end
end
