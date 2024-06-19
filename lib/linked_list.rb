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

    tail.next_node = Node.new(value)
  end

  def prepend(value)
    return @head = Node.new(value) if @head.nil?

    @head = Node.new(value, @head)
  end

  def tail(node = @head)
    return node if node.next_node.nil?

    tail(node.next_node)
  end
end
