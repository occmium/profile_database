class SyncRequest < ApplicationRecord
  belongs_to :profile
  enum status: [:awaiting, :in_process, :done]
end
