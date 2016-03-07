class Due < ActiveRecord::Base

  has_many :rifles
  has_many :archeries
  has_many :barrels
  has_many :miscellaneous
  has_many :optics
  has_many :preloveds
  has_many :reloadings
  has_many :stocks
  has_many :triggers

  validates :name, presence: true
  validates :name, uniqueness: true
end
