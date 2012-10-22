class AddColumnGmapsToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :gmaps, :boolean
  end
end
