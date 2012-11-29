class Task < ActiveRecord::Base
  attr_accessible :description, :status

  validates :description, :status, presence: true

end
