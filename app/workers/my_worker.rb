class MyWorker
  include Sidekiq::Worker
  
  def perform
    logger.info "Calling at #{Time.now}}"
  end
end
