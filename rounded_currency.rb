
def rounded_currency value

  rounded = value.to_f
  if rounded > 1000
    "$%0.1fK" % [rounded / 1000]
  else
    "$%0.0f" % rounded
  end
end

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

  it 'converts 78192 => "$78K"'
  it 'converts 501200 => "$501K"'
  it 'converts -1240123 => "($1.2M)"'
  it 'converts 5853010238 => "$5.9B"'
end

# All you have to do is handle integers up to the 100's of T's.
