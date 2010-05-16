class CreateTattoos < ActiveRecord::Migration
  def self.up
    create_table :tattoos do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.integer :artist_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tattoos
  end
end
