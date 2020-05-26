class Player
  attr_accessor :lives
  def initialize(n)
    @id = n
    @name = "Player #{n}"
    @lives = 3
    puts "Hello #{@name}"
  end

  def life_scores(outcome)
    if !outcome
      self.lives -= 1
    end
    if self.lives == 0 
      return false
    else
      return "#{self.lives}/3"
    end
  end

end
