require './line'
require './point'

class Puzzle
  attr_accessor :name, :lines

  def initialize(name, lines)
    @name = name
    @lines = lines
  end

  def count_triangles(lines)
    triangles(lines.combination(3).to_a)
  end

  private

  def common_point(line_duo)
    line_duo[0].points.each do |point_line_1|
      line_duo[1].points.each do |point_line_2|
        return point_line_1.name if point_line_1 == point_line_2
      end
    end
  end

  def triangle_points(line_triple)
    lines_pares = line_triple.combination(2).to_a
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

end