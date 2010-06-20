class CreateMovies < ActiveRecord::Migration

  def self.up
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.integer :prequel_id
      t.integer :director_id
      t.integer :producer_id
    end
  end

  def self.down
    drop_table :movies
  end
  
end
