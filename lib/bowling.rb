class Bowling
  def initialize(scores)
    @scores = scores
  end

  def score
    result = 0
    index = 0
    (0..9).each do |frame|
      if strike? index
        result += 10 + strike_bonus(index)
        index += 1
      elsif spare? index
        result += 10 + spare_bonus(index)
        index += 2
      else
        result += standard_frame index
        index += 2
      end
    end
    result
  end

private
  def spare?(index)
    @scores[index] + @scores[index + 1] == 10
  end

  def strike?(index)
    @scores[index] == 10
  end

  def strike_bonus(index)
    @scores[index + 1] + @scores[index + 2]
  end

  def spare_bonus(index)
    @scores[index + 2]
  end

  def standard_frame(index)
    @scores[index] + @scores[index + 1]
  end
end
