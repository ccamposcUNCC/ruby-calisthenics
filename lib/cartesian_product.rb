class CartesianProduct
  include Enumerable
  
  attr_accessor :product
  
  def initialize(a,b)
    @product = a.product(b)
  end
  
  def each
    @product.each do |x|
      yield(x)
    end
  end
  
end
