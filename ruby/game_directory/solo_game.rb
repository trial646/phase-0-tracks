def test_statement
  p "hello world"
end


def input_secret(secret_word)
    puts "Player 1, write your secret word here"
    @secret_word = secret_word
    secret_word = gets.chomp
  end


  # input_secret(gets.chomp)
  # secret_word = secret_word.split('')
# first attempt to get a flexible object structure for fill in blank
  # def guess_word1
  #   @num_spaces = @secret_word.length
  #   @num_spaces
  #   @guess_word_arr.push("-" * @num_spaces)

  #   # got a string of blank spaces in an array, stuck on how to split into multiple arrays
  # end

# second attempt successful
  def guess_word
    @num_spaces = @secret_word.length
    @blank_spaces = "-" * @num_spaces
    p @blank_spaces = @blank_spaces.split('')
  end

# though running gets.chomp inside a variable not best practice cant pass it it in as an argument here.
  def guess_prompt
    puts "Guess a letter to figure out the secret word"
    @all_attempts << @guess_letter = gets.chomp
    p @all_attempts
    #I've created and all_attempts array to capture each guess to print all guesses later
    if @secret_word.include?(@guess_letter) == false
    puts "Incorrect! Try again"
    @num_attempts +=1
    p @num_attempts
  #else @num_attempts == @num_attempts to express that number does not change ?
    end


end


# game = Guessing_game.new
# game.input_secret
# game.guess_word
# game.guess_prompt


