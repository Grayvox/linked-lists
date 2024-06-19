# frozen_string_literal: true

require_relative 'node'

# Defines the linked list itself
class LinkedList
  attr_accessor :head

  def intialize(head = nil)
    @head = head
  end

  def tail(node = @head)
    return node if node.nil?

    tail(node.next_node)
  end
end
