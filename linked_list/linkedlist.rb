# deckare LinkedList class that holds 
#  head: reference to first node of list
#  tail: referece to last node ot list
#  also provide method for basic linked list functionality 

# require file that hold declaretion of node class
require_relative 'node.rb'

class LinkedList
  attr_accessor :head, :tail

   # Initialize head and tail to same initial Node.
  def initialize (head)
      raise "LinkedList must be initialized with a Node." unless head.is_a?(Node)
          
      @head = head
      @tail = head
  end
  
  # insert new node to list tail
  def insert(node)
    @tail.next = node
    @tail = @tail.next
  end  

  # print all node in-order 
  def print
    current_node = @head

    until current_node == nil
	    puts "Current node value is = #{current_node.value}"
	    current_node = current_node.next
    end 	
 end
 
 # print list in reverse order
 # using recursion
 def print_reverse
   print_recursively(@head)   
 end
 
 # print nth node from last 
 # example: last 2nd node
 def print_nth_last_node(number)
   head, result = @head, @head
   puts "head is #{head.value if head} and result is #{result.value if result}"
   number.times do 
     if head.next != nil
       head = head.next
     else
       break  
     end
   end
   
   puts "after nth number head is #{head.value}"
   
   until head.next == nil
     result = result.next
     head = head.next
   end 
   
   return result
 end

 def fill_list(number)
    nodes = []
   (1..number).each {|index| nodes << Node.new(index)}
   
   nodes.each do |node|
     insert(node)
   end  
 end

# remove node by value
 def remove_node(value)
   new_head = remove_node_recursively(@head, value)
   if new_head
     @head = new_head
   else
    puts "You can't empty list"
   end
 end  

 def size
  length = 1
  current = @head

  while current.next
    length += 1
    current =  current.next
  end

  length
 end    
 
 private
 
 def print_recursively(head)
   puts "current head is #{head.value}"
     if head.next != nil
       print_recursively(head.next)
     end
       
     p head.value
  end

  def remove_node_recursively(current, value)
   # return if list end 	
    if current == nil
      return nil
    end
		
    # check to see if current node is one
    # to be deleted
    if current.value == value
      #save next node
      tempNextNode = current.next 

      #free current node
       current = nil

      # Return the NEW pointer to where we
      #were called from.  I.e., the pointer
      #the previous call will use to "skip
      #over" the removed node.
      return tempNextNode   
    end

   # Check the rest of the list, fixing the next
   # pointer in case the next node is the one
   # removed.
    current.next =  remove_node_recursively(current.next, value)	
     
    return current 
  end    
end 

=begin
nodes = []
(1..10).each {|index| nodes << Node.new(index)}
link_list = LinkedList.new(Node.new(0))
nodes.each do |node|
  link_list.insert(node)
end  
link_list.print
puts "The reverse order version of this linked list is"
link_list.print_reverse
nth = 11
puts "nth last node for #{nth} is #{link_list.print_nth_last_node(nth).value}"
value_to_remove = 2
puts "after removed node with value #{value_to_remove}"
link_list.remove_node(value_to_remove)
link_list.print
=end

