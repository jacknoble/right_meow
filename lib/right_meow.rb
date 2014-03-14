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

class Kernel
	def hey_meow!(arg)
		raise arg
	end
end

def not_meow(n)
	sleep(n)
end