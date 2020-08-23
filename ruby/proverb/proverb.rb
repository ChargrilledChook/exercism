# Passes the tests but pretty ugly. 99 bottles of OOP would be a good reference to improve
class Proverb
  attr_reader :items, :qualifier

  def initialize(*items, qualifier: '')
    @items = items
    @qualifier = qualifier
  end

  def to_s
    string = ''
    items.each_with_index do |item, idx|
      if idx == items.size - 1
        string << "And all for the want of a #{qualifier.empty? ? "#{items[0]}" : "#{qualifier} #{items[0]}"}."
      else
        string << "For want of a #{item} the #{items[idx + 1]} was lost.\n"
      end
    end
    string
  end
end
