class Player
  def play_turn(warrior)
    # add your code here
    if warrior.feel.empty? && warrior.health == 20 && (!(warrior.feel.captive?))
      warrior.walk!
    elsif (warrior.feel.empty?) && (warrior.health < @health) && (warrior.feel.captive?)                    
      warrior.rescue!
    elsif (warrior.feel.empty?) && (warrior.health == @health)
      warrior.rest!        
    else
      warrior.attack!        
    end
    @health = warrior.health        
  end
end
