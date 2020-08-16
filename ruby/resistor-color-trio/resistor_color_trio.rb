class  ResistorColorTrio
  CODES = %w[black brown red orange yellow green blue violet grey white].freeze

  def initialize(colors)
    @colors = check_colors(colors)
  end

  def label
    "Resistor value: #{convert_code}"
  end

  private

  def convert_code
    code = CODES.index(@colors[0]).to_s + CODES.index(@colors[1]).to_s
    code << ('0' * CODES.index(@colors[2]))
    check_kiloohms(code)
  end

  def check_kiloohms(code)
    if code.to_i >= 1000
      code.delete_suffix('000') + ' kiloohms'
    else
      code + ' ohms'
    end
  end

  def check_colors(colors)
    raise ArgumentError unless colors.all? { |color| CODES.include?(color) }

    colors
  end
end
