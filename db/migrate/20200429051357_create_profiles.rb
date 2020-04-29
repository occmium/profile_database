class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles, id: :uuid do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.string :city, null: false
      t.string :company, null: false

      t.timestamps
    end
    add_index :profiles, :name
    add_index :profiles, :surname
    add_index :profiles, :city
    add_index :profiles, :company
  end
end
