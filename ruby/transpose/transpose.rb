class Transpose
  def self.transpose(input)
    return '' if input.empty?

    input.chars.join("\n")
  end
end
