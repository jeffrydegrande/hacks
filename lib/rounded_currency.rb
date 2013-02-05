def rounded_currency value
  val = value.to_f.abs
  rounded = if val > 1_000_000_000
              "%0.1fB" % [val / 1_000_000_000]
            elsif val > 1_000_000
              "%0.1fM" % [val / 1_000_000]
            elsif val > 10_000
              "%0.0fK" % [val / 1_000]
            elsif val > 1_000
              "%0.1fK" % [val / 1_000]
            else
              "%0.0f" % val
            end

  if value < 0
    "($#{rounded})"
  else
    "$#{rounded}"
  end
end
