class Key
  attr_reader :input

  def initialize
    @input = randomize_numbers
  end

  def randomize_numbers
    rand(5 ** 5).to_s.rjust(5, '0')
  end

  def generate_keys
  keys = []
    @input.chars.each_cons(2).each do |first, second|
      string = first + second
      keys << string.to_i
    end
    keys
  end

end
