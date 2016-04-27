class PriorityQueue
	def initialize
		@elements = [nil]
	end

	def <<(element)
		@elements << element
		bubble_up(@elements.size - 1)
	end

	def pop
		exchange(1, @elements.size-1)
		
		max = @elements.pop
		
		bubble_down(1)
		max
	end

	# aka heapify_up or swim
	def bubble_up(index)
		parent_index = (index / 2)

		return if parent_index <= 1

		return if @elements[parent_index] >= @elements[index]

		exchange(index, parent_index)

		bubble_up(parent_index)
	end

	# aka heapify down or sink
	def bubble_down(index)
		child_index = (index * 2)

		return if child_index > @elements.size - 1

		child_index += 1 if (child_index+1 <= @elements.size-1) && 
			@elements[child_index+1] > @elements[child_index]
		
		return if @elements[index] > @elements[child_index]

		exchange(index, child_index) 

		bubble_down(child_index)
	end

	def exchange(source, target)
		@elements[source], @elements[target] = @elements[target], @elements[source]
	end
end