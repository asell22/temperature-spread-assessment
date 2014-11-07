class ClassDataAnalysis
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def lowest_temperature
     lowest = data.map{|object| object.low}
     lowest.min
  end

  def highest_temperature
    highest = data.map{|object| object.high}
    highest.max
  end

  def day_of_lowest_temperature
      lowest_day = nil
      data.each do |object|
        if object.low == lowest_temperature
          lowest_day = object.day
        end
      end
      lowest_day
  end

  def day_of_highest_temperature
      highest_day = nil
      data.each do |object|
        if object.high == highest_temperature
          highest_day = object.day
        end
      end
      highest_day
  end

  def average_temperatures

    average_temperatures = []
    data.each do |object|
    average = (object.high + object.low)/2.0.round(2)
    average_temperatures << average
    end

    average_temperatures

  end

















end
