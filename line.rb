class Line
  attr_accessor :name, :points

  def initialize(name, points=[])
    @name = name
    @points = points
  end

  def add_points(points)
    @points << points
    @points.flatten!
  end

end