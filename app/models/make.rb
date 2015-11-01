class Make < ActiveRecord::Base
  has_many :rifles
  validates :name, presence: true
  validates :name, uniqueness: true
end
