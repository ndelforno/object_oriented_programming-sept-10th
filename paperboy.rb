class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end
# Attribute Readers
  def name
    return @name
  end

  def experience
    return @experience
  end

  def earnings
    return @earnings
  end

# Attribute Writers
  def quota
    if @experience == 0
    quota = 50
    else
    quota = 50 + (@experience/2).to_i
    end
  end


  def deliver(start_address, end_address)
    delivery = (end_address-start_address) + 1
    if delivery < quota
      @earnings = @earnings + ((delivery * 0.25)-2).to_f
    end
    if delivery > quota
      over = delivery - quota
      @earnings = @earnings + ((quota * 0.25) + (over * 0.50)).to_f
    end
      @experience = @experience + delivery
  end

  def report
    return "I'm #{name}, I've delivered #{experience} papers and I've earned $#{earnings} so far !"
  end
end

paperboy1 = Paperboy.new("tommy")
puts paperboy1.quota
puts paperboy1.earnings
puts paperboy1.experience
puts "---------------"
paperboy1.deliver(101,160)
puts paperboy1.experience
puts paperboy1.earnings
puts paperboy1.report
puts "---------------"
puts paperboy1.quota
paperboy1.deliver(1,75)
puts paperboy1.earnings
puts paperboy1.report
puts "---------------"
# puts paperboy1.quota
# puts paperboy1.experience
# paperboy1.deliver(1,85)
# puts paperboy1.earnings
# puts paperboy1.report
