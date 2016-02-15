require_relative 'linkedlist.rb'

nodes = []
(1..10).each {|index| nodes << Node.new(index)}
link_list = LindedList.new(Node.new(0))
nodes.each do |node|
  link_list.insert(node)
end  
link_list.print
