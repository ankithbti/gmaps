class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.string :name
      t.string :address
      t.string :latitude
      t.string :longitude
      t.timestamps
    end
  end

  def self.down
    drop_table :characters
  end
end
