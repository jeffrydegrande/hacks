require './lib/rounded_currency'

describe "rounded_currency" do
  it 'converts 0 to "$0"' do
    rounded_currency(0).should == "$0"
  end

  it 'converts 140 => "$140"' do
    rounded_currency(140).should == "$140"
  end

  it 'converts 1240 => "$1.2K"' do
    rounded_currency(1240).should == "$1.2K"
  end

  it 'converts 78192 => "$78K"' do
    rounded_currency(78192).should == "$78K"
  end

  it 'converts 501200 => "$501K"' do
    rounded_currency(501200).should == "$501K"
  end

  it 'converts -1240123 => "($1.2M)"' do
    rounded_currency(-1240123).should == "($1.2M)"
  end

  it 'converts 5853010238 => "$5.9B"' do
    rounded_currency(5853010238).should == "$5.9B"
  end
end
