class AddSeasonToShows < ActiveRecord::Migration[5.2]
def change 
    add_column :shows, :season, :string do |t|
    end
end
end 