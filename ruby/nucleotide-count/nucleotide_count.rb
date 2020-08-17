class Nucleotide
  def self.from_dna(dna)
    raise ArgumentError unless validator(dna)

    @dna = dna
    self
  end

  def self.histogram
    @dna.each_char.each_with_object({"A"=>0, "T"=>0, "C"=>0, "G"=>0}) { |nuc, hash| hash[nuc] += 1 }
  end

  def self.count(num)
    @dna.count(num)
  end
end

def validator(dna)
  dna.each_char.all? { |char| 'ATCG'.include?(char) }
end
