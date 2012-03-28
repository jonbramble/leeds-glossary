class Entry < ActiveRecord::Base
  belongs_to :language
  belongs_to :subtopic
  has_many :translations
  accepts_nested_attributes_for :translations
end
