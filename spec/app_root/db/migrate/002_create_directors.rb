class CreateDirectors < ActiveRecord::Migration

  def self.up
    create_table :directors do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :directors
  end

end
