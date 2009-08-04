class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :feed_id
      t.text :source
      t.string :hash
      t.boolean :published, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
