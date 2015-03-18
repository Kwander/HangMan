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
		hp = 6
		word = "lapas"
		letters = word.split(//)

		#status = Status.new()

		puts "The game has started"

		while @on && hp != 0

			puts "Your status"
			puts "-----------"
			puts "HP: #{hp}"
			status(hp)
			puts "-----------"
			puts "/n"
			puts "Guess a letter"
			letter = gets.chomp
			letter = letter[0].dup
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
		status(hp)
		gets

	end


	def pick_word

	end

	def status(hp)
		head = ""
		body = ""
		left_hand = " "
		right_hand = ""
		left_leg = ""
		right_left = ""

		if hp < 6
			head = "O"
		end

		if hp < 5
			body = "|"
		end

		if hp < 4
			left_hand = "/"
		end

		if hp < 3
			right_hand = "\\"
		end

		if hp < 2
			left_leg = "/"
		end

		if hp < 1
			right_leg = " \\"
		end

		
		puts "------"
		puts "|    |"
		puts "|    |"
		puts "|    #{head}"
		puts "|  #{left_hand} #{body} #{right_hand}"
		puts "|   #{left_leg}#{right_leg}"
	end


end