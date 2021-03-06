require './puzzle'
# http://i.ytimg.com/vi/t9cxM_DQMXI/hqdefault.jpg

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

line_names = %w(a b c d e f g)

a = Line.new(line_names[0])
b = Line.new(line_names[1])
c  = Line.new(line_names[2])
d = Line.new(line_names[3])
e = Line.new(line_names[4])
f = Line.new(line_names[5])
g = Line.new(line_names[6])


all_lines = [a, b, c, d, e, f, g]

a.add_points([p1, p2, p8])
b.add_points([p1, p3, p7, p9])
c.add_points([p1, p4, p6, p10])
d.add_points([p1, p5, p11])
e.add_points([p2, p3, p4, p5])
f.add_points([p8, p7, p6, p5])
g.add_points([p8, p9, p10, p11])

puzzle = Puzzle.new("Internet 2", all_lines)
puzzle.count_triangles
