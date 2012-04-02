class Entry < ActiveRecord::Base
  belongs_to :language
  belongs_to :subtopic
  has_many :translations, :dependent => :destroy
  accepts_nested_attributes_for :translations
 
  def english
	word
  end
end
