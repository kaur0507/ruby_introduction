#! /usr/bin/env ruby


class Warrior
    
  def initialize()
    @level = 1
    @rank = "Pushover"
    @experience = 100
    # @achievements = []
  end

  def level()
    @level
  end

  def rank()
    range_of_ranks = ["Pushover", "Novice", "Fighter", "Warrior", "Veteran", "Sage", "Elite", "Conqueror", "Champion", "Master", "Greatest"]
    @rank
  end

  def experience()
    @experience
  end

  def achievements()

  end

  def training(event)

  end

  def battle(enemy_level)

  end

end

tom = Warrior.new
puts tom.level()
puts tom.experience()
puts tom.rank()
