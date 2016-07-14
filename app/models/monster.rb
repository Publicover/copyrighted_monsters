class Monster < ActiveRecord::Base
  before_save :set_rarity
  belongs_to :location

  def set_rarity
    if self.name == "Abra"
      self.rarity = "It worked!"
    else
      self.rarity = "The else worked too!"
    end
  end
end
