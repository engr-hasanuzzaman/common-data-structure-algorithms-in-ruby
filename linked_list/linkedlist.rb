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
    @tail = tail
  end  

  # print all node in-order 
  def print
    current_node = @head

    until current_node == nil
	    puts "Current node value is = #{current_node.value}"
	    current_node = current_node.next
    end 	
 end
end 

head = Node.new('sumon')
link_list = LindedList.new(head)
link_list.print
puts "insert new node with value salma"
link_list.insert(Node.new('salma'))
link_list.print
  
