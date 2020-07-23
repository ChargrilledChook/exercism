class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def self.value(colors)
    value = COLORS.index(colors.first).to_s + COLORS.index(colors[1]).to_s
    value.to_i
  end
end
