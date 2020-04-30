class Profile < ApplicationRecord
  has_many :sync_requests, dependent: :destroy

  def in_process?
    SyncRequest.find_by(profile_id: id, status: "in_process") ? true : false
  end
end
