class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :feed_id
      t.string :title
      t.string :url
      t.text :description
      t.string :tags
      t.boolean :published, :default => true
      t.text :source

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
