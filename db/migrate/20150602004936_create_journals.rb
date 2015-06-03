class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :journal_name
      t.integer :issues_per_yr
      t.string :journal_url
      t.string :content_guide_url
      t.string :topic_id
      t.string :admin_id

      t.timestamps

    end
  end
end
