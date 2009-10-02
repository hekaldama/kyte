class CreatePrayerRequests < ActiveRecord::Migration
  def self.up
    create_table :prayer_requests do |t|
      t.string :title
      t.text :body
      t.references :person

      t.timestamps
    end
  end

  def self.down
    drop_table :prayer_requests
  end
end
