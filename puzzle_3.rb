require './puzzle'

# http://www.intelligencetest.com/images/test/questions/27.gif


point_names = %w(A B C D E F G)
p1 = Point.new(point_names[0])
p2 = Point.new(point_names[1])
p3 = Point.new(point_names[2])
p4 = Point.new(point_names[3])
p5 = Point.new(point_names[4])
p6 = Point.new(point_names[5])
p7 = Point.new(point_names[6])

line_names = %w(a b c d e f)

a = Line.new(line_names[0])
b = Line.new(line_names[1])
c  = Line.new(line_names[2])
d = Line.new(line_names[3])
e = Line.new(line_names[4])
f = Line.new(line_names[5])

all_lines = [a, b, c, d, e, f]

a.add_points([p1, p2, p3])
b.add_points([p3, p4, p5])
c.add_points([p1, p5, p6])
d.add_points([p3, p6, p7])
e.add_points([p5, p2, p7])
f.add_points([p1, p7, p4])

puzzle = Puzzle.new("Internet 3", all_lines)
puzzle.count_triangles