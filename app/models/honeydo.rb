class Honeydo < ActiveRecord::Base
  validates_presence_of :title
  validates :title, :length => { :minimum => 2}
  validates_uniqueness_of :title

  belongs_to :user
end
