class AddSeason < ActiveRecord::Migration[5.2]
  def change
    add_columns :shows do |s|
      s.string :season
    end
  end
end