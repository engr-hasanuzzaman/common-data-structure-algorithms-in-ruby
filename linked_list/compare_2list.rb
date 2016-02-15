require_relative 'linkedlist.rb'

def compare(node_1, node_2)
# check where 2 list are same or contain nil  
  if node_1 == node_2
     return 0
  end

  while(node_1 != nil && node_2 != nil && node_1.value == node_2.value)
	node_1 = node_1.next
	node_2 = node_2.next
  end

  result = if node_1 == nil && node_2 == nil
		#  both value is same
		puts "equal list with node_1 nil and node_2 is nil"
		0
	   else
		if node_1 != nil && node_2 != nil
		  # same length list with same value
		  puts "Unequal value termination with node_1 : #{node_1.value} and node_2 is #{node_2.value}"
		  node_1.value > node_2.value ? 1 : -1
		else
		  if node_1 == nil
		    puts "node_1: nil  and node_2 is #{node_2.value}" 	
		    -1	
		  else
		    puts " node_1: #{node_1.value} and node_2 is nil"	
		    1	
		  end	
		end	
	   end 	    
end
@list_1 = LinkedList.new(Node.new('g'))
@list_2 = LinkedList.new(Node.new('g'))

@list_1.insert(Node.new 'e')
@list_1.insert(Node.new 'e')
@list_1.insert(Node.new 'k')
@list_1.insert(Node.new 's')
#@list_1.insert(Node.new 'a')

@list_2.insert(Node.new 'e')
@list_2.insert(Node.new 'e')
@list_2.insert(Node.new 'k')
@list_2.insert(Node.new 's')
#@list_2.insert(Node.new 'b')
#list_2.insert(Node.new 'e')

puts "compare result of list_1 and list_2 is #{compare(@list_1.head, @list_2.head)}"

