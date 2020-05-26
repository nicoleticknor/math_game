require './questions.rb'

class Game
  def ask_question(qs, num, player)
    puts "---------- NEW TURN ----------"
    if player == 1
      print "Player 1: "
    else
      print "Player 2: "
    end
    qs.each do |q|
      if q[:id] == num
        puts q[:q]
        answer = q[:a]
        return answer
      end
    end
  end

  def evaluate_response(answer)
    response = gets.chomp.to_i
    if response == answer
      puts "YES! You are correct"
      return true
    else 
      puts "Nope."
      return false
    end
  end

  def announce_scores(s1, s2)
    puts "P1: #{s1} vs P2: #{s2}"
  end

  def announce_winner(s1, s2)
    if !s1
      puts "Player 2 wins with a score of #{s2}"
    else
      puts "Player 1 wins with a score of #{s1}"
    end
    puts "---------- GAME OVER ----------"
    puts "Goodbye!"
  end

end

