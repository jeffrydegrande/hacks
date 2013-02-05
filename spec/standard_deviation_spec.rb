require './lib/standard_deviation'

describe "standard deviation" do
  let (:series) { [2,4,4,4,5,5,7,9] }

  describe 'mean' do
    it "calculates the mean of series" do
      StandardDeviation.new.mean(series).should == 5
    end
  end

  describe 'difference_to_mean' do
    it "calculates the difference" do
      StandardDeviation.new.difference_to_mean(2, 5).should == 9
      StandardDeviation.new.difference_to_mean(4, 5).should == 1
      StandardDeviation.new.difference_to_mean(7, 5).should == 4
    end
  end

  describe "standard deviation" do
    it "takes the #mean from the #difference_to_mean's and takes the square root" do
      StandardDeviation.new.calculate(series).should == 2
    end
  end

  describe '.standard_deviation' do
    it "calculates the standard deviation" do
      StandardDeviation.calculate(series).should == 2
    end
  end
end
