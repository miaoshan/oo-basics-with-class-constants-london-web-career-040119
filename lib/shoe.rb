class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS= []   #class constant. class constants are shared among all instances.
                #They all have access to the same data, and if that data should change for some reason,
                #all instances will know about that change.

  def initialize(brand)
    @brand = brand
    if !BRANDS.include?(brand)
      BRANDS << brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
