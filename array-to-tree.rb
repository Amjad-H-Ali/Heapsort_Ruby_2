p "Array To Tree Ruby"

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
		
end	
