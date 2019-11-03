class CreateShows <  ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |s|
      s.string :name
      s.string :network
      s.string :day
      s.integer :ratings
    end
  end
end