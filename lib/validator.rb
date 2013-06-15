def validation zip_code
  if zip_code.length == 3 and zip_code =~ /\d+/
    return true
  end
  false
end
