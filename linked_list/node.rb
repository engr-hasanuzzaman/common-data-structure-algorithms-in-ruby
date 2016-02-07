# declare Node for linked list that holes
#  => value: node value 
#  => next: reference to next node 

  
class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
  end
end 
