require_relative 'hangman'

# Starting the game - creating the game object
puts "Welcome to Hangman. The game is starting to initialize..."
game = Hangman.new()
# Starting the game - launching the play
game.start()
