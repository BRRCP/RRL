class Entity
	def initialize x, y, char, stats
		@x = x
		@y = y
		@char = char
		@stats = stats
	end
end

class Enemy < Entity
	def initialize x, y, char, stats, loot
		super x, y, char, stats
		@loot = loot
	end
	def action

	end
end

class Player < Entity
	def initialize x, y, char, stats, mods
		super x, y, char, stats
		@mods = mods
	end
	def action

	end
end