class StandardDeviation
  def self.calculate series
    StandardDeviation.new.calculate(series)
  end

  # Calculate the standard deviation of a series of integers.
  #
  def calculate series
    mean        = mean(series)
    differences = series.map { |value| difference_to_mean(value, mean) }
    Math.sqrt(mean(differences))
  end

  # Calculate the mean of a series of integers
  #
  def mean(series)
    series.inject(&:+) / series.length
  end

  def difference_to_mean(value, mean)
    ( value - mean ) ** 2
  end
end
