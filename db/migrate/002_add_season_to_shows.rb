class AddSeasonToShows < ActiveRecord::Migration[5.2]
  def change
    add_columns :tvshows do |s|
      s.string :season
    end
  end
end