class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :journal_topic

      t.timestamps

    end
  end
end
