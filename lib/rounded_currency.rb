def rounded_currency value
  rounded = round_with_string(value.to_f.abs)
  if value < 0
    "($#{rounded})"
  else
    "$#{rounded}"
  end
end

def round_with_string value
  if value > 1_000_000_000
    "%0.1fB" % [value / 1_000_000_000]
  elsif value > 1_000_000
    "%0.1fM" % [value / 1_000_000]
  elsif value > 10_000
    "%0.0fK" % [value / 1_000]
  elsif value > 1_000
    "%0.1fK" % [value / 1_000]
  else
    "%0.0f" % value
  end
end
