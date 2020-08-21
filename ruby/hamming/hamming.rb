class Hamming
  def self.compute(dna1, dna2)
    raise ArgumentError unless dna1.size == dna2.size

    dna1.chars.zip(dna2.chars).count { |nuc1, nuc2| nuc1 != nuc2 }
  end
end
