class CreateShows < ActiveRecord::Migration[5.2]
    def change
        create_table :shows do |t|
            #name, network, day string. Rating integer.
            t.text :name
            t.text :network
            t.text :day
            t.integer :rating
        end
    end
end