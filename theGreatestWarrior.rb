#! /usr/bin/env ruby

class Warrior
  
  def initialize()
    @experience = 100
    @level = level()
    @rank = rank()
    @achievements = []
  end

  def level()
    if (@experience.to_f / 100).floor() <= 100 && (@experience.to_f / 100).floor() > 0
      @level = (@experience.to_f / 100).floor()
    elsif (@experience.to_f / 100).floor() > 100
      @level = 100
      @experience = 10000
    end
  end

  def rank()
    range_of_ranks = ["Pushover", "Novice", "Fighter", "Warrior", "Veteran", "Sage", "Elite", "Conqueror", "Champion", "Master", "Greatest"]
    @rank = range_of_ranks[(@level.to_f/10).floor]
  end

  def experience()
    return @experience
  end

  def achievements()
    return @achievements
  end

  def training(event)
    
    if event[2] > 0 || event[2] <= 100
      if @level >= event[2]
        @achievements.push(event[0])
        @experience += event[1]
        @level = level()
        return event[0]
      else
        return "Not strong enough"
      end
    else
      return "Invalid level"
    end
  end

  def battle(enemy_level)
    range_of_ranks = ["Pushover", "Novice", "Fighter", "Warrior", "Veteran", "Sage", "Elite", "Conqueror", "Champion", "Master", "Greatest"]

    if enemy_level > 100 || enemy_level < 1
      return "Invalid level"
    elsif enemy_level == @level 
      @experience += 10
      @level = level()
      return "A good fight"
    elsif enemy_level == @level - 1
      @experience += 5
      @level = level()
      return "A good fight"
    elsif enemy_level <= @level - 2
      return "Easy fight"
    elsif enemy_level > @level
      if enemy_level - 5 >= @level && range_of_ranks.index(@rank) + 1 <= (enemy_level.to_f/10).floor
        return "You've been defeated"
      else
        @experience += 20 * (enemy_level - @level) * (enemy_level - @level)
        @level = level()
        return "An intense fight"
      end
    end
  end

end

bruce_lee = Warrior.new
puts bruce_lee.level         # => 1
puts bruce_lee.experience    # => 100
puts bruce_lee.rank          # => "Pushover"
puts bruce_lee.achievements  # => []
puts bruce_lee.training(["Defeated Chuck Norris", 9000, 1]) # => "Defeated Chuck Norris"
puts bruce_lee.experience    # => 9100
puts bruce_lee.level         # => 91
puts bruce_lee.rank          # => "Master"
puts bruce_lee.battle(90)    # => "A good fight"
puts bruce_lee.experience    # => 9105
puts bruce_lee.achievements  # => ["Defeated Chuck Norris"]