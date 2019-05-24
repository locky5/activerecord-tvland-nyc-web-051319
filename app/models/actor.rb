class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    thing = self.characters.map do |character|
      self.shows.map do |show|
        "#{character.name} - #{show.name}"
      end
    end
    thing.to_s
  end

end
