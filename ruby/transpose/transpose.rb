class Transpose
  def self.transpose(input)
    input.split("\n").map(&:chars).transpose.map(&:join).join("\n")
  end
end

def test(input)
  lines = input.split("\n")
  max_str = lines.max.size
  lines = lines.map(&:chars).transpose
  lines.map(&:join).map { |line| line.ljust(max_str, ' ') }.join("\n")
end
