require './puzzle'

# http://puzzlersworld.com/picture-puzzles/how-many-triangles-9/


point_names = %w(A B C D E F G H I J K L M N O)
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
p12 = Point.new(point_names[11])
p13 = Point.new(point_names[12])
p14 = Point.new(point_names[13])
p15 = Point.new(point_names[14])

line_names = %w(a b c d e f g h i j k l)

a = Line.new(line_names[0])
b = Line.new(line_names[1])
c  = Line.new(line_names[2])
d = Line.new(line_names[3])
e = Line.new(line_names[4])
f = Line.new(line_names[5])
g = Line.new(line_names[6])
h = Line.new(line_names[7])
i = Line.new(line_names[8])
j = Line.new(line_names[9])
k = Line.new(line_names[10])
l = Line.new(line_names[11])

all_lines = [a, b, c, d, e, f, g, h, i, j, k, l]

a.add_points([p11, p7, p4, p2, p1])
b.add_points([p12, p8, p5, p3])
c.add_points([p13, p9, p6])
d.add_points([p14, p10])
e.add_points([p1, p3, p6, p10, p15])
f.add_points([p2, p5, p9, p14])
g.add_points([p4, p8, p13])
h.add_points([p7, p12])
i.add_points([p2, p3])
j.add_points([p4, p5, p6])
k.add_points([p7, p8, p9, p10])
l.add_points([p11, p12, p13, p14, p15])

puzzle = Puzzle.new("Internet 3", all_lines)
puzzle.count_triangles