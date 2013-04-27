require 'debugger'
class Calculator
  def initialize
    @total = 0
  end

  def total
    @total
  end

  def add(*numbers)
    numbers.each do |number|
      next unless [Fixnum, Float].include?(number.class)
      @total += number
    end
    self
  end

  def subtract(*numbers)
    numbers.each do |number|
      next unless [Fixnum, Float].include?(number.class)
      @total -= number
    end
    self
  end

  def multiply(*numbers)
    numbers.each do |number|
      next unless [Fixnum, Float].include?(number.class)
      # If total is currently zero, set the total to number
      # otherwise multiply the total by number
      #if @total == 0
      #  @total = number
      #else
      #  @total *= number
      #end
      @total = @total == 0 ? number : @total * number
    end
    self
  end

  def divide(*numbers)
    numbers.each do |number|
      next unless [Fixnum, Float].include?(number.class)
      next if number == 0
      @total = @total == 0 ? number : @total / number.to_f
    end
    self
  end

  def sqrt
  	@total = Math.sqrt(@total)
    self
  end

  def clear
    @total = 0
    self
  end

end