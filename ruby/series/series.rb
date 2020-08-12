class Series
  def initialize(num_string)
    @num_string = num_string
  end

  def slices(slice_len)
    raise ArgumentError unless slice_len <= @num_string.size

    @num_string.each_char.each_cons(slice_len).map(&:join)
  end
end
