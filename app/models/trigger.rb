class Trigger < ActiveRecord::Base
  belongs_to :due
  belongs_to :make
end
