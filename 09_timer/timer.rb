class Timer
	attr_accessor :seconds
	
	def initialize(seconds = 0)
		@seconds = seconds
	end

	def time_string
		hours = @seconds / (60 * 60)
    	minutes = (@seconds / 60) % 60
    	seconds = @seconds % 60
    	format("%02d:%02d:%02d", hours, minutes, seconds)
	end
end