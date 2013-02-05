def mean(series)
  series.inject(&:+) / series.length
end

def difference_to_mean(value, mean)
  ( value - mean ) ** 2
end


describe "standard deviation" do
  # standard deviation according to formula:
  #
  # - get the mean
  # - calculate the differences to the mean
  # - take square of the averages
  describe 'mean' do
    it "calculates the mean of series" do
      mean([1, 2, 3]).should == 2
      mean([2,4,4,4,5,5,7,9]).should == 5
    end
  end

  describe 'difference_to_mean' do
    it "calculates the difference" do
      difference_to_mean(2, 5).should == 9
      difference_to_mean(4, 5).should == 1
      difference_to_mean(7, 5).should == 4
    end
  end
end
