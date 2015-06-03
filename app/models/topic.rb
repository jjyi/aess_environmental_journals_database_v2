class Topic < ActiveRecord::Base
  has_many :journals , :class_name => "Journal", :foreign_key => "topic_id"
end
