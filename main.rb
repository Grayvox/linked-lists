# frozen_string_literal: true

require_relative 'lib/linked_list'

test = LinkedList.new

# Populate LinkedList
test.append('one')
test.append('two')
test.append('three')
test.append('four')
test.append('five')
test.append('six')
test.append('seven')
test.append('eight')

p test

# Test methods
puts '--- #prepend ---'
p test.prepend('zero') # returns a node with value 'zero', which is at the start of the list
puts '--- #size ---'
p test.size # returns 9
puts '--- #head ---'
p test.head # returns @head and all nodes after it
puts '--- #tail ---'
p test.tail # returns the last node (the tail)
puts '--- #at ---'
p test.at(4) # returns the Node at index 4 and all nodes after it
puts '--- #pop ---'
p test.pop # returns the ending node that was removed
puts '--- #contains? ---'
p test.contains?('nine') # returns false
puts '--- #find ---'
p test.find('seven') # returns 8 (the index of seven)
puts '--- #insert_at ---'
p test.insert_at('6', 7) # returns the newly inserted node and all nodes after it
puts '--- #remove_at ---'
p test.remove_at(1) # returns all nodes without the one removed
puts '--- #to_s ---'
puts test # returns "( one ) -> ( two ) -> ( three ) -> ( four ) -> ( five ) -> ( 6 ) -> ( seven ) -> nil"
