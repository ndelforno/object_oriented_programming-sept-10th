class Player
  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

#instance method
  def level_up
    @lives += 1
  end

  def collect_treasure
    if @gold_coins % 10 == 0
    @gold_coins += 1
    end
    level_up
  end

  def do_battle(damage)
    @health_points = @health_points - damage
    if @health_points < 1
      @lives = @lives - 1
      @health_points = 10  
    end
    if @lives < 1
      restart
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end
end

#player1 = Player.new
#puts player1.collect_treasure(player1)
