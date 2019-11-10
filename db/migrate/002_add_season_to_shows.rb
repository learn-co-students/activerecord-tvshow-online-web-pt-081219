class AddSeasonToShows < ActiveRecord::Migration[5.2]
  
  def change 
    add_column :shows, :season, :string 
    #class, cloumn, type
  end
end