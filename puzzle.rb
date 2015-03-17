require './line'
require './point'

class Puzzle
  attr_accessor :name, :lines

  def initialize(name, lines)
    @name = name
    @lines = lines
  end

  def count_triangles
    triangles(@lines.combination(3).to_a)
  end

  private

  def triangles(line_triples)
    triangles = []

    line_triples.each do |triple|
      triangles << triangle_points(triple) if  triangle_points(triple).size == 3
    end

    puts "#{triangles.compact.size} triangles found:"
    print_triangles(triangles.compact)
  end

  def triangle_points(line_triple)
    matching_points = []

    line_triple.combination(2).to_a.each do |line_tuple|
      matching_points << common_point(line_tuple)
    end

    matching_points.uniq.compact.size == 3 ? matching_points : [nil]
  end

  def common_point(line_tuple)
    line_tuple[0].points.each do |point_line_1|
      line_tuple[1].points.each do |point_line_2|
        return point_line_1.name if point_line_1 == point_line_2
      end
    end
    nil
  end

  def print_triangles(triangles_points)
    triangles_points.each do |triangle|
      puts triangle.to_s
    end
  end

end