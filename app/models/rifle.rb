class Rifle < ActiveRecord::Base
  belongs_to :make
  belongs_to :due

  validates :name, presence: true
  validates :name, uniqueness: true

  has_attached_file :image, :styles => { :medium => "450x450>", :thumb => "250x250>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
