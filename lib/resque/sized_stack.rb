require 'thread'
require 'delegate'

module Resque
  ###
  # Sized LIFO queue.
  class SizedStack < DelegateClass(SizedQueue)
    def initialize(size)
      super(SizedQueue.new(size))
    end

    def shift
      __getobj__.pop
    end
  end
end
