class Die
  def initialize
  # I'll just roll the die, though we could do something else
  # if we wanted to, such as setting the die to have 6 showing.
    roll
  end
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
  def cheat num
    if !num.between?(1,6)
      roll
    else
      @number_showing = num
    end
  end
end
