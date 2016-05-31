class Game
  attr_reader :point

  def initialize(n, t)
    @n = n
    @dice = 0
    @award = 0

    loop do
      shoot_a_dice
      break if @dice < t
      @award -= 1
    end

    @award += @dice
  end

  def shoot_a_dice
    @dice = 1 + Random.rand @n
  end
end

class Policy
  def initialize
  end
end

class MCESMethod

end
