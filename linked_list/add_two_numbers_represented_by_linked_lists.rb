require_relative 'linkedlist.rb'
require_relative 'node.rb'
@carry = 0

def add_linked_list(list_1, list_2)
	size1 = list_1.size
	size2 = list_2.size
	result_list = LinkedList.new(Node.new(nil))

	if size1 == size2
		result_list.head = add_same_size_list(list_1.head, list_2.head, @carry)
	elsif  size1 > size2
		diff = size1 - size2

		node1 = get_nth_first_node(diff + 1)
		node2 = list_2.head

		temp = add_same_size_list(node1, node2, @carry)

	else
		
	end
end


# private 

def add_same_size_list(node1, node2, carry)
	unless node2 || node2
	 	return nil
	end

	current = Node.new(-1)
	current.next = add_same_size_list(node1.next, node2.next, carry)

	puts "#{node2.value} and #{node1.value} with carry #{@carry}"
	sum = node2.value + node1.value + @carry
	current.value = sum % 10
	@carry = sum / 10

    return current
end

list_1 = LinkedList.new(Node.new(9))
list_2 = LinkedList.new(Node.new(9))

list_1.insert(Node.new(9))
list_1.insert(Node.new(9))

list_2.insert(Node.new(5))
list_2.insert(Node.new(6))

result = LinkedList.new(add_same_size_list(list_1.head, list_2.head, 0))

puts "list1 is "
list_1.print_list

puts "list is "
list_2.print_list 

puts "New created list is "
result.print_list