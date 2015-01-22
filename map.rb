class Map
	ERROR_MAP = "Error de mapa."
	def initialize interactables, layout_file
		f = File.new layout.to_s, 'r'
		@interactables = interactables.kind_of? Array ? interactables : Exception.new(ERROR_MAP)
		@layout = f.read
	end
	
	def refresh
		system "clear" or system "cls"
		puts layout
	end
end
