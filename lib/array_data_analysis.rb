class ArrayDataAnalysis

  def initialize(data)
    @data= data
  end

  def data
    @data
  end

  def lowest_temperature
    values = data.map{|array| array.last}
    values.min
  end

  def highest_temperature
    values = data.map{|array| array.fetch(1)}
    values.max
  end

  def day_of_lowest_temperature
    lowest_array = []
    data.each do |array|
      if array.include?(lowest_temperature)
        lowest_array = array
      end
    end
    lowest_array[0]
  end

  def day_of_highest_temperature
    highest_array = []
    data.each do |array|
      if array.include?(highest_temperature)
        highest_array = array
      end
    end
    highest_array[0]
  end

  def average_temperatures
    average_temperatures = []
    data.each do |array|
      average_value = (array[1] + array[2])/2.round(2)
      average_temperatures << average_value
    end  
      average_temperatures
  end


end
