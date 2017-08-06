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

until game.guess_count == secret_word.length
puts "Player 2, guess a letter"
guess_attempt = gets.chomp
game.attempts_arr << guess_attempt
p game.attempts_arr
#game.guess_letter

  if secret_word.include?(guess_attempt)
  blank_fill = secret_word.index(guess_attempt)
    blank_spaces[blank_fill] = guess_attempt
    p blank_spaces
  else
    puts "Nope, sorry that is incorrect. Try again!"
  end
game.guess_count += 0

if game.attempts_arr.include?(guess_attempt)
  then
  game.guess_count -= 1
end


  if game.guess_count == secret_word.length && secret_word != blank_spaces
  puts " You are out of guesses. Boo Hoo. The secret word was '#{secret_word}'."
  elsif
  secret_word == blank_spaces
  puts "Way to go champ! You guessed correctly."
  end

end
