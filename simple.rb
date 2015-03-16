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

  def print_points
    @points.each do |point|
      puts point.name
    end
  end
end

class Point
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Puzzle
  def initialize(name, lines)
    @name = name
    @lines = lines
  end

  def lines
    @lines
  end
end

def print_lines(lines)
  lines.each do |line|
    print "Line #{line.name} ("
    line.points.each do |point|
      print "#{point.name}"
    end
    print ") - "
  end
    print "\n"
end

def common_point(line_duo)
  line_duo[0].points.each do |point_line_1|
    line_duo[1].points.each do |point_line_2|
      return point_line_1.name if point_line_1 == point_line_2
    end
  end
end

def triangle_points(line_triple)
  lines_pares = line_triple.combination(2).to_a
  print_lines(line_triple)
  matching_points = []

  lines_pares.each do |line_duo|
    matching_points << common_point(line_duo)
  end

  return matching_points.uniq

end

def triangles(line_triples)
  triangles = []

  line_triples.each do |triple|
    triangles << triangle_points(triple) if triangle_points(triple).size == 3
  end
  puts "I found #{triangles.compact.size} triangles"
end

def count_triangles(lines)
  triangles(lines.combination(3).to_a)
end



# Michal's last triangle
# point_names = %w(A B C D E F G H I J K L M N O P Q R)
# p1 = Point.new(point_names[0])
# p2 = Point.new(point_names[1])
# p3 = Point.new(point_names[2])
# p4 = Point.new(point_names[3])
# p5 = Point.new(point_names[4])
# p6 = Point.new(point_names[5])
# p7 = Point.new(point_names[6])
# p8 = Point.new(point_names[7])
# p9 = Point.new(point_names[8])
# p10 = Point.new(point_names[9])
# p11 = Point.new(point_names[10])
# p12 = Point.new(point_names[11])
# p13 = Point.new(point_names[12])
# p14 = Point.new(point_names[13])
# p15 = Point.new(point_names[14])
# p16 = Point.new(point_names[15])
# p17 = Point.new(point_names[16])
# p18 = Point.new(point_names[17])

# line_names = %w(a b c d e f g h i)

# a = Line.new(line_names[0])
# b = Line.new(line_names[1])
# c  = Line.new(line_names[2])
# d = Line.new(line_names[3])
# e = Line.new(line_names[4])
# f = Line.new(line_names[5])
# g = Line.new(line_names[6])
# h = Line.new(line_names[7])
# i = Line.new(line_names[8])

# all_lines = [a, b, c, d, e, f, g, h, i]

# a.add_points([p1, p2, p4, p5, p6])
# b.add_points([p2, p3, p7, p8, p9])
# c.add_points([p1, p3])
# d.add_points([p3, p4, p10, p13, p16])
# e.add_points([p5, p3, p11, p14, p17])
# f.add_points([p6, p3, p12, p15, p18])
# g.add_points([p1, p7, p10, p11, p12])
# h.add_points([p1, p8, p13, p14, p15])
# i.add_points([p1, p9, p16, p17, p18])

# Michals first
point_names = %w(A B C D E F G H I J K)
p1 = Point.new(point_names[0])
p2 = Point.new(point_names[1])
p3 = Point.new(point_names[2])
p4 = Point.new(point_names[3])
p5 = Point.new(point_names[4])
p6 = Point.new(point_names[5])
p7 = Point.new(point_names[6])
p8 = Point.new(point_names[7])
p9 = Point.new(point_names[8])
p10 = Point.new(point_names[9])
p11 = Point.new(point_names[10])

line_names = %w(a b c d e)

a = Line.new(line_names[0])
b = Line.new(line_names[1])
c  = Line.new(line_names[2])
d = Line.new(line_names[3])
e = Line.new(line_names[4])

all_lines = [a, b, c, d, e]

a.add_points([p1, p2, p3])
b.add_points([p3, p10, p11])
c.add_points([p1, p4, p7, p10])
d.add_points([p1, p5, p8, p11])
e.add_points([p2, p6, p9, p11])

count_triangles(all_lines)





