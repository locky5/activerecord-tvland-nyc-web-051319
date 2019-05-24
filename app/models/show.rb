class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network # belongs to A network (one-to-many relationship)

end
