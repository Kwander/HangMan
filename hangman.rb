require_relative 'status'

class Hangman

	def initialize()
		@on = false
	end

	def start
		@on = true
		game()
	end

	def game
		hp = 5
		word = "lapas"
		letters = word.split(//)

		#status = Status.new()

		puts "The game has started"

		while @on && hp != 0

			puts "Your status"
			puts "-----------"
			puts "HP: #{hp}"
			#puts status.show()
			puts "-----------"
			puts "/n"
			puts "Guess a letter"
			letter = gets.chomp
			puts "You've entered #{letter}"

			if letters.include? letter
				letters.delete(letter)
				puts "Found one!"
			else
				hp -= 1
			end

			if letters.length == 0
				@on = false
			else
				puts "#{letters.length} / #{word.length}"
			end

			
		end

		puts "The game has ended"
		gets

	end


	def pick_word

	end

	def status()

	end


end