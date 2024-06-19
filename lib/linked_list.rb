# frozen_string_literal: true

require_relative 'node'

# Defines the linked list itself
class LinkedList
  attr_accessor :head

  def intialize(head = nil)
    @head = head
  end

  def append(value)
    return @head = Node.new(value) if @head.nil?

    append_to = tail
    append_to.next_node = Node.new(value)
  end

  def tail(node = @head)
    return node.value if node.next_node.nil?

    tail(node.next_node)
  end
end
