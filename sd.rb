def mean(series)
  series.inject(&:+) / series.length
end

describe "standard deviation" do
  # standard deviation according to formula:
  #
  # - get the mean
  #
  describe 'mean' do
    it "calculates the mean of series" do
      mean([1, 2, 3]).should == 2
      mean([2,4,4,4,5,5,7,9]).should == 5
    end
  end
end
