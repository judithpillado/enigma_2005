require 'time'

class Offset
  attr_reader :date

  def initialize(date = Time.now.strftime("%d%m%y"))
    @date = date
  end

  def squared_date
    squared = @date.to_i * @date.to_i
    strings = squared.to_s.chars[-4..-1]
    offsets = strings.map do |string|
      string.to_i
    end
    offsets
  end

end
