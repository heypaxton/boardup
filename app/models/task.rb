class Task < ActiveRecord::Base
  attr_accessible :description, :status

  validates :description, :status, presence: true

 	scope :find_all, select("*")
  scope :active, where(status: "active")
end
