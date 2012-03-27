class Entry < ActiveRecord::Base
  belongs_to :language
  belongs_to :subtopic
end
