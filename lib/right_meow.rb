require 'date'

class Time
	def self.meow
		self.now
	end
end

class DateTime
	def self.meow
		self.now
	end
end

alias hey_meow! raise

alias not_meow sleep

