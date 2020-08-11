class Series
  attr_reader :num_string

  def initialize(num_string)
    @num_string = num_string
  end

  def slices(slice_len)
    raise ArgumentError if slice_len > num_string.length

    num_string.chars.each_cons(slice_len).map(&:join)
  end
end
