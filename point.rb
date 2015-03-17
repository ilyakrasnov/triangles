class Point
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_s
    puts "I am point #{name}"
  end
end