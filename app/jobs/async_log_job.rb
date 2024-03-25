class AsyncLogJob < ApplicationJob
  queue_as do
    case self.arguments.first[:message]
    when "to async_log"
      :acync_log
    else
      :default
    end
  end
  retry_on StandartError, waite: 5.seconds, attempts: 3

  discard_on StandartError do |job, error|
    SomeNotifier.push(error)
  end

  def perform(*args)
    AsyncLog.create!(*args)
  end
end
