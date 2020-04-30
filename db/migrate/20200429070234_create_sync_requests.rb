class CreateSyncRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :sync_requests, id: :uuid do |t|
      # t.references :profile, null: false, foreign_key: true
      t.uuid :profile_id, null: false, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
