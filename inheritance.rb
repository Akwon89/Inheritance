require_relative './fly_module'

class Animal

  def initialize(warmblooded, num_legs)
    @warmblooded = warmblooded
    @num_legs = num_legs
  end

end
################
class Amphibian < Animal

  def initialize(num_legs)
    super(false, num_legs)
  end

end

class Frog < Amphibian

  def initialize
    super(4)
  end

end
#################
class Mammal < Animal

 def initialize(num_legs)
    super(true, num_legs)
  end

end
######
class Primate < Mammal

  def initialize
    super(2)
  end

end

class Chimpanzee < Primate

end
######
class Bird < Mammal

  include Fly

  def initialize
    super(2)
    @wings = 2
  end

end

class Parrot < Bird

end

class Bat < Bird

end

pinky = Bat.new
p pinky
pinky.fly

test = Mammal.new(4)
p test

