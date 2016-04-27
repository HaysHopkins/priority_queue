require_relative './Element.rb'

# insert is O(1) and pop is O(n)
class NaivePriorityQueue
	def initialize
		@elements = []
	end

	def <<(element)
		@elements << element
	end

	def pop
		last_element_index = @elements.size - 1
		@elements.sort!
		@elements.delete_at(last_element_index)
	end
end

q = NaivePriorityQueue.new
q << Element.new("bar", 1)
q << Element.new("foo", 3)
q << Element.new("baz", 2)

puts q.pop.name
