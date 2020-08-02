# Splits an input string into an array delineated on the \n character
# Then maps each element of that array into a subarray of integer values
class Matrix
  attr_reader :rows, :columns

  def initialize(input)
    @rows = convert_to_matrix(input)
    @columns = rows.transpose
  end

  private

  def convert_to_matrix(input)
    input.split("\n").map { |row| row.split(' ').map(&:to_i) }
  end
end
