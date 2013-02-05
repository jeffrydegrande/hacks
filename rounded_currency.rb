describe "rounded_currency" do
  it 'converts 0 to "$0"'
  it 'converts 140 => "$140"'
  it 'converts 1240 => "$1.2K"'
  it 'converts 78192 => "$78K"'
  it 'converts 501200 => "$501K"'
  it 'converts -1240123 => "($1.2M)"'
  it 'converts 5853010238 => "$5.9B"'
end

# All you have to do is handle integers up to the 100's of T's.
