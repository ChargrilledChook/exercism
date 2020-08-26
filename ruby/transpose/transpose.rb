class Transpose
  def self.transpose(input)
    lines = input.split("\n")#.map#(&:chars)#.transpose.map(&:join)#.join("\n")
    lines = lines.map {|line| line.ljust( lines.max.size, ' ') }
    lines.map(&:chars).transpose.map(&:join).join("\n")
  end
end

def test(input)
  lines = input.split("\n")
  _max_str = lines.max.size
  lines = lines.map(&:chars).transpose
  lines.map(&:join).map.join("\n")
end
