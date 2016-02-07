# deckare LinkedList class that holds 
#  head: reference to first node of list
#  tail: referece to last node ot list
#  also provide method for basic linked list functionality 

# require file that hold declaretion of node class
require_relative 'node.rb'

class LindedList
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
 
 private
 
 def print_recursively(head)
   puts "current head is #{head.value}"
     if head.next != nil
       print_recursively(head.next)
     end
       
     p head.value
  end    
end 

nodes = []
(1..10).each {|index| nodes << Node.new(index)}
#p nodes
link_list = LindedList.new(Node.new(0))
nodes.each do |node|
  link_list.insert(node)
end  
#link_list.print
puts "The reverse order version of this linked list is"
link_list.print_reverse



