class Journal < ActiveRecord::Base
  belongs_to :topic , :class_name => "Topic", :foreign_key => "topic_id"
end
