class QueryCreatorService
  def initialize(profile)
    @profile = profile
  end

  def perform
    @sync_request = SyncRequest.create!(profile: @profile)
    @autoupdate_worker = AutoupdateWorker.perform_async(@sync_request.id)
  end
end
