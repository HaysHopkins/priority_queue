class Element
	include Comparable

	attr_accessor :name, :priority

	def initialize(name, priority)
		@name, @priority = name, priority
	end

	# What's going on here!?  I realize that an object is being compared with another object
	# based upon its priority value, but the method signature and the 'other' don't make sense to me.
	def <=>(other)
		@priority <=> other.priority
	end
end