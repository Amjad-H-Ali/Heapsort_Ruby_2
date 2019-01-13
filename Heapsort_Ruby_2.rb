p "Heap Sort Ruby!"

# Function that arranges given array into max heap
# meaning all parent nodes are greater than children
def max_heap array, indx, size
	# Default value of largest indx is parent indx
	largest = indx

	# Left and right children nodes' index
	left  = (indx * 2) + 1
	right = left + 1

	# If left child is greater than parent, set largest variable equal to its index
	if left < size and array[left] > array[largest]
		largest = left
	end

	# If right child is greater than parent, set largest variable equal to its index
	if right < size and array[right] > array[largest]
		largest = right
	end

	# If parent is not the largest after all, swap it with the largest
	# Reccursively do the same down the tree
	if largest != indx

		swap(array, largest, indx)

		max_heap(array, largest, size)
	end	
		
end	

# Function that swaps elements in array
def swap array, indx1, indx2
	temp = array[indx1]

	array[indx1] = array[indx2]

	array[indx2] = temp
end	

# Function will pass index of each parent node into max heap function.
# Once array is in max heap, it will swap root node with last node, delete last node, and make effected array into max heap again.
def heapsort array
	
	size = array.length

	# Call max_heap for each parent node
	(size/2 - 1).downto(0) {|indx| max_heap(array, indx, size)}

end	
