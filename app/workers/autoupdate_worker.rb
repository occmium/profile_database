class AutoupdateWorker
  include Sidekiq::Worker

  def perform(sync_request_id)
    @sync_request = SyncRequest.find(sync_request_id)
    UpdateProfileService.new(sync_request_id).perform
    @sync_request.done!
  end
end
