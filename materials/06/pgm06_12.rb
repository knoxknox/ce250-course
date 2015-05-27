class Queue < Container

  def initialize
    super
  end

  abstractmethod :enqueue

  abstractmethod :dequeue

  abstractmethod :head

end
