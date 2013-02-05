def rounded_currency value
  wrapped_in_parens(value, round_to_string(value.to_f.abs))
end

def wrapped_in_parens value, rounded_string
  if value < 0
    "($#{rounded_string})"
  else
    "$#{rounded_string}"
  end
end

def round_to_string value
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
