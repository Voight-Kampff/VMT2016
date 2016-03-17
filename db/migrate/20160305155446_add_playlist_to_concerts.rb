class AddPlaylistToConcerts < ActiveRecord::Migration
  def change
  	add_column :concerts, :playlist, :text
  	add_column :concerts, :shortname, :string
  end
end
