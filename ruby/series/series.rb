class Series
  attr_reader :num_string

  def initialize(num_string)
    @num_string = num_string
  end

  def slices(slice_len)
    raise ArgumentError if slice_len > num_string.length

    res = num_string.chars.each_with_index.map do |_elt, idx|
      next unless num_string[idx...idx + slice_len].length == slice_len

      num_string[idx...idx + slice_len]
    end
    res.compact
  end
end
