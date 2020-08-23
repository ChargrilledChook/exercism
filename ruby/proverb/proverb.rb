class Proverb
  attr_reader :items

  def initialize(*items)
    @items = items
  end

  def to_s
    string = ''
    items.each_with_index do |item, idx|
      if idx == items.size - 1
        string << "And all for the want of a #{items[0]}."
      else
        string << "For want of a #{item} the #{items[idx + 1]} was lost.\n"
      end
    end
    string
  end

  private

  def verse(item)
    "For want of an #{item} the #{items[idx+1]} was lost.\n"
  end

  def final
    "And all for the want of a #{item}."
  end
end

#"For want of an #{item} the #{items[idx+1]} was lost.\n"
#"And all for the want of a #{item}."
