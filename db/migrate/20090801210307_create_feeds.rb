class CreateFeeds < ActiveRecord::Migration
  def self.up
    create_table :feeds do |t|
      t.string :name
      t.string :url
      t.string :type
      t.boolean :active, :default => true
      t.boolean :in_stream, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :feeds
  end
end
