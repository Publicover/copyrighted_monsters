class Monster < ActiveRecord::Base
  before_save :set_rarity
  belongs_to :location

  def set_rarity
    case self.name
    when "Rattata", "Pidgey", "Weedle", "Venonat", "Zubat", "Caterpie", "Doduo"
      self.rarity = "0: Everywhere"
    when "Oddish", "Paras", "Gastly", "Drowzee", "Eevee", "Magikarp", "Meowth",
         "Bellsprout", "Ekans", "Nidoran M/F", "Polywag", "Slowpoke", "Goldeen",
         "Krabby", "Mankey"
      self.rarity = "1: Common"
    when "Spearow", "Growlith", "Jigglypuff", "Cleafairy", "Psyduck", "Seel",
         "Abra", "Geodude", "Sandshrew", "Vulpix", "Diglett", "Exeggcute",
         "Tentacool", "Shellder", "Onix", "Poliwhirl"
      self.rarity = "2: Uncommon"
    when "Machamp", "Ponyta", "Weezing", "Voltrob", "Horsea", "Staryu",
         "Tangela", "Cubone", "Ryhorn", "Grimmer", "Magnemite", "Scyther",
         "Lickitung"
      self.rarity = "3: Rare"
    when "Bulbasaur", "Charmander", "Squirtle", "Pikachu", "Omanyte", "Kabuto",
         "Aerodactyl", "Hitmochan", "Hitmonlee"
      self.rarity = "4: Special"
    when "Dratini", "Farfetch'd", "Mr Mine", "Jynx", "Magmar", "Electabuzz",
         "Porygon", "Beedrill"
      self.rarity = "5: Epic"
    when "Lapras", "Snorlax", "Kangaskhan", "Chansey"
      self.rarity = "6: Myths"
    when "Ditto"
      self.rarity = "7: Still not convinced it exists"
    else
      self.rarity = "I have no idea"
    end
  end
end
