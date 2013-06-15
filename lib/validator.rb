def validation zip_code
  length_true = [3,7].map{|i| zip_code.length == i }.any?

  if length_true and zip_code =~ /\d+/
    return true
  end
  if zip_code =~ /\d{3}-\d{4}/
    return true
  end
  false
end
