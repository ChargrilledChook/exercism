class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.reduce do |best, current|
      best > current ? best : current
    end
  end

  def personal_top_three
    scores.sort.reverse[0..2]
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end