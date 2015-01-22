class Interactable
	ERROR_INTERACTABLE = "Error de interaccionable."
	def initialize x, y , type, event, error = ERROR_INTERACTABLE
		@x = x.kind_of? Integer ? x : Exception.new(error)
		@y = y.kind_of? Integer ? y : Exception.new(error)
		@type = type.kind_of? String ? y : Exception.new(error)
		@event = event.kind_of? Proc ? event : Exception.new(error)
	end
	
	protected
	def in? x, y
		return x == @x && y == @y
	end

	protected
	def force_event
		event.call
	end

	protected
	def set_off_event x, y
		if x == @x && y == @y then
			event.call
		end
	end
	
end

class Collectible
	ERROR_TRIGGER = "Error de coleccionable."
	def initialize x, y , type, event, error = ERROR_COLLECTIBLE
		super x, y , type, event, error
	end
	
end

class Trigger
	ERROR_TRIGGER = "Error de gatillo."
	def initialize x, y , x_aux, y_aux, type, event, error = ERROR_TRIGGER
		super x, y , type, event, error
		@x_aux = x_aux.kind_of? Integer ? x_aux : Exception.new(error)
		@y_aux = y_aux.kind_of? Integer ? y_aux : Exception.new(error)
	end
	
end
