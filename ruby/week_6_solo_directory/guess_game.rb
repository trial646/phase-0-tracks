# def test_statement
#   p "hello world"
# end
class Guessing_game

attr_accessor :secret_word, :blank_spaces, :all_attempts, :num_attempts, :is_over, :guess_letter

  def initialize
    @secret_word
    #@guess_word_arr = []
    @blank_spaces
    @all_attempts = []
    @num_attempts = 0
    @is_over = false
  end

def input_secret(secret_word)
    puts "Player 1, write your secret word here"
    #@secret_word = secret_word
    @secret_word = gets.chomp
    p @secret_word
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

  def guess_prompt
    puts "Guess a letter to figure out the secret word"
    guess_letter = gets.chomp
    @all_attempts << guess_letter
    p @all_attempts
    #@all_attempts = all_attempts
    if secret_word.include?(guess_letter) == false
    puts "Incorrect! Try again"
    end

    if secret_word.include?(guess_letter) == true
      @correct_guess_index = secret_word.index(guess_letter)
      @blank_spaces[@correct_guess_index].replace(guess_letter)
      p @blank_spaces
    end

    if @all_attempts.include?(guess_letter) == false
    @num_attempts += 1
    p @num_attempts
  else
    @num_attempts == @num_attempts
  #else @num_attempts == @num_attempts to express that number does not change ?
    end


end

# though running gets.chomp inside a variable not best practice cant pass it it in as an argument for method guess_word.
#I've created an all_attempts array to capture each guess to print all guesses later

game = Guessing_game.new
game.input_secret(gets.chomp)
game.guess_word
game.guess_prompt
game.guess_letter
game.all_attempts

  if
  game.blank_spaces == game.secret_word.split
  p "You win"
  end

  until game.num_attempts == game.secret_word.length #|| game.all_attempts != game.secret_word
  game.guess_prompt
  end


  #game.num_attempts == game.secret_word.length

p game.num_attempts
p game.all_attempts
end
