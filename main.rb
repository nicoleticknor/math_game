require './game.rb'
require './player.rb'
require './questions.rb'

20.times { print '-' }
puts

game = Game.new
p1 = Player.new(1)
p2 = Player.new(2)

player = 1

while player > 0
  if player % 2 != 0
answer = game.ask_question(@questions, rand(1..4), 1)
outcome = game.evaluate_response(answer)
s1 = p1.life_scores(outcome)
s2 = p2.life_scores(true)
break if !s1 || !s2
game.announce_scores(s1, s2)
  else
    answer = game.ask_question(@questions, rand(1..4), 2)
    outcome = game.evaluate_response(answer)
    s1 = p1.life_scores(true)
    s2 = p2.life_scores(outcome)
    break if !s1 || !s2
    game.announce_scores(s1, s2)
  end
  player +=1
end

game.announce_winner(s1, s2)
