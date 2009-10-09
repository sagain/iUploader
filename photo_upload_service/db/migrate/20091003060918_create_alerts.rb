class CreateAlerts < ActiveRecord::Migration
  def self.up
    create_table :alerts do |t|
      t.string :title
      t.text :content
      t.string :status
      t.datetime :deadline
      
      t.timestamps
    end
  end

  def self.down
    drop_table :alerts
  end
end
