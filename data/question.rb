class Question

  attr_accessor :answer
  attr_reader :sum

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
    @answer = 0
  end
  
  def ask_question(player)
    puts"#{player}: What does #{@num1} plus #{@num2} equal?"
    print "> "
    self.answer = gets.chomp.to_i
  end
end

