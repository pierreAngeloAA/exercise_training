class DndCharacter
  BASE_HITPOINTS = 10

  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints

  def initialize
    @strength = roll_ability_score
    @dexterity = roll_ability_score
    @constitution = roll_ability_score
    @intelligence = roll_ability_score
    @wisdom = roll_ability_score
    @charisma = roll_ability_score
    @hitpoints = BASE_HITPOINTS + DndCharacter.modifier(@constitution)
  end

  def self.modifier(score)
    (score - 10) / 2
  end

  private
  def roll_ability_score
    rolls = Array.new(4) { rand(1..6) }
    rolls.sum - rolls.min
  end
end