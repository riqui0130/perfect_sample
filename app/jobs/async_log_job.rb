class AsyncLogJob < ApplicationJob
  queue_as :default

  def perform(*args)
    AsyncLog.create!(*args)
  end
end
