class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    # p size = orders.size

    rice = Array.new
    noodles = Array.new
    orders.each do |i|
      rice = i.values_at(:rice)
      noodles = i.values_at(:noodles)
    end
    rprice = 0
    nprice = 0
    rice.each {|x| rprice += (x*3)}
    noodles.each {|i| nprice += (i*2)}
    return rprice+nprice
  end
end

any = Restaurant.new({rice: 3,noodle: 2})
p any.cost({rice: 1, noodles: 2},{rice: 2, noodles: 4})
