class Barracks

  attr_accessor :gold, :food

  def initialize
    @gold = 1000
    @food = 80
  end
  def can_train_footman?
    if (gold>=135 && food>=2)#compensating for dumb dumb dumb rspec
      true
    else
      false
    end
  end

  def can_train_peasant?
    return gold >=90 && food>=5
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -=2
      Footman.new
    end
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end
end
#b = Barracks.new
#b.food=1
#b.gold=10
#puts b.can_train_footman?
