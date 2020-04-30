class AutoupdateWorker
  include Sidekiq::Worker

  def perform(profile_id)
    profile = Profile.find(profile_id)
    sync_request = SyncRequest.create!(profile: profile)
    sync_request.in_process!
    UpdateProfileService.new(profile_id).perform
    sync_request.done!
  end
end
