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

  def size(node = @head, count = 0)
    return count if node.nil?

    count += 1
    size(node.next_node, count)
  end

  def tail(node = @head)
    return node if node.next_node.nil?

    tail(node.next_node)
  end

  def at(index, node = @head, current_index = 1)
    return node if index == current_index

    at(index, node.next_node, current_index + 1)
  end

  def pop(node = @head)
    return nil if @head.nil? || @head.next_node.nil?
    return node.next_node = nil if node.next_node.next_node.nil?

    pop(node.next_node)
  end

  def contains?(value, node = @head)
    return true if value == node.value
    return false if node.next_node.nil?

    contains?(value, node.next_node)
  end
end

list = LinkedList.new
list.append(1)
list.append(2)
list.append(3)
puts list.contains?(1)
