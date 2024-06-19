# frozen_string_literal: true

# Defines a node in a linked list
class Node
  attr_reader :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
