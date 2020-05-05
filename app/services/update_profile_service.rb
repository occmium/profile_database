class UpdateProfileService
  def initialize(sync_request_id)
    @sync_request = SyncRequest.find(sync_request_id)
    @profile = @sync_request.profile
   end

  def perform
    raise "Your request has been queued!" if @profile.in_process?
    @sync_request.in_process!

    update_name
    update_surname
    update_city
    update_company
    # or other service for eexample
  end

  private

  def update_name
    sleep 4 #Connection with name database is being established!
    @profile.update_attribute(:name, Faker::Name.first_name)
  end
  
  def update_surname
    sleep 5 #Connection with surname database is being established!
    @profile.update_attribute(:surname, Faker::Name.last_name)
  end
  
  def update_city
    sleep 6 #Connection with city database is being established!
    @profile.update_attribute(:city, Faker::Address.city)
  end
  
  def update_company
    sleep 5 #Connection with company database is being established!
    @profile.update_attribute(:company, Faker::Company.name)
  end
end
