def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |key, value|
    value.each do |k, v|
      if new_hash.include?(k) == false
        new_hash[k] = {v.keys[0] => v.values[0], :style => [key]}
      else
        new_hash[k][:style] << key
      end
    end
  end
  new_hash
end
