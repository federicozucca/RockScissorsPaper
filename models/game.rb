class Game

  def initialize(choice1, choice2)
    @choice1 = choice1
    @choice2 = choice2
  end

  def play (choice1, choice2)
    if choice2 == "computer"
      choice2 = computer_play()
    end
    if choice1 == "rock" && choice2 == "scissors"
      return "rock"
    elsif choice1 == "rock" && choice2 == "paper"
      return "paper"
    elsif choice1 == "scissors" && choice2 == "paper"
      return "scissor"
    elsif choice1 == "scissors" && choice2 == "rock"
        return "rock"
    elsif choice1 == "paper" && choice2 == "scissors"
          return "scissor"
    elsif choice1 == "paper" && choice2 == "rock"
      return "scissor"
    elsif choice1 == choice2 
      return "none"
      end
  end


    def computer_play
      random = rand(2)
      if random == 0
        return "rock"
      elsif random == 1
        return "paper"
      else
        return "scissors"
      end

    end

end