 #Assume your driver code will handle input and output as far as the user is concerned.
# Game prompts for a secret word (user output?)
#-User 1 inputs a secret word (user input )
# The secret word displays as blank spaces  ——— (user output)
# User 2 guesses a letter of the secret word (user input)
# If a letter is guessed correctly, the index number of that letter is returned. That letter is then applied to that same index number of the blank space word ——— (is this computer side? How do I test this?)
# if letter is guessed incorrectly they are told - incorrect - then prompted to guess again (user output)

# User 2 is allowed to guess the same number of times as there are letters in secret word (is this computer side? How do I test this without running whole game?)
# The number of attempts does not advance if User 2 guesses the same letter twice          Guess attempts are stored in an array. if guess array #include is true for a guess word, either subtract 1 from the counter (or the counter should have a conditional not to advance by one)
# Thumbs up if they guess all letters correctly before their turns are up
# Thumbs down if they run out of turns before guessing all letters correctly

class Game
  attr_accessor :secret_word, :guess_attempt, :blank_fill, :guess_count, :attempts_arr

  def initialize
    @game_over = false
    @guess_count = 0
    @secret_word = secret_word
    @attempts_arr = []
  end




  # def guess_letter
  #   if secret_word.include?(guess_attempt)
  #     @blank_fill = @secret_word.index(@guess_attempt)
  #     secret_word[@blank_fill] = @guess_attempt

    end
#   end
# end

game = Game.new
puts "Lets play a guessing game"
puts "Player 1 please enter a secret word for Player 2 to guess!"
secret_word = gets.chomp
puts "Player 1's secret word has #{secret_word.length} letters."
p blank_spaces = "-" * secret_word.length

until game.attempts_arr.length == secret_word.length
puts "Player 2, guess a letter"
guess_attempt = gets.chomp

# if the letter is already in the guess array from a previous attempt, if we do not add it to the array again and change the until statement to be game.attempts_arr and secret word are equal in length then game ends?
if game.attempts_arr.include?(guess_attempt) == false
game.attempts_arr << guess_attempt
end
p game.attempts_arr


  if secret_word.include?(guess_attempt)
  blank_fill = secret_word.index(guess_attempt)
    blank_spaces[blank_fill] = guess_attempt
    p blank_spaces
  else
    puts "Nope, sorry that is incorrect. You have #{secret_word.length - game.attempts_arr.length} chances remaining!"
  end


  if game.attempts_arr.length == secret_word.length && secret_word != blank_spaces
  puts " You are out of guesses. Boo Hoo. The secret word was '#{secret_word}'."
  elsif
  secret_word == blank_spaces
  puts "Way to go champ! You guessed correctly."
  end

end

# Here is my second attempt to write the game code with class methods to control game behaviors rather than just user facing driver code outside class definition.

# class Game
#   attr_accessor :secret_word, :guess_word, :guess_letter

#   def initialize
#     @secret_word = ''
#     @guess_word = []
#     @game_over = false
#     @total_attempts = 0
#     @guess_letter = ''
#   end

#   def secret_word_blanks
#     @secret_word_blanks = '-' * @secret_word.length
#   end

#   def add_guess_letter
#     if secret_word.include?(guess_letter)
#     blank_fill = secret_word.index(guess_attempt)
#     guess_word[blank_fill] = guess_letter
#     @total_attempts += 1
#   end

# end
