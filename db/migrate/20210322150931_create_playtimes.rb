class CreatePlaytimes < ActiveRecord::Migration[5.2]
  def change
    create_table :playtimes do |t|
      t.integer :artist_id
      t.integer :instrument_id
    end
  end
end
