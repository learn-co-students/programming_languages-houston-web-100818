'require pry'

def reformat_languages(languages)

  new_hash = {}
  languages.each do |style, data|
    data.each do |language, data_type|
      if new_hash.has_key?(language) # .has_key - returns true if given value is present in hash
    new_hash[language][:style] << style  #adding items to array
  else
    new_hash[language] = data_type       #adding new key/value pairs to new_hash
    new_hash[language][:type] = data_type[:type]
    new_hash[language][:style] = [style]
    end
  end
end
new_hash                  #return new_hash at the end of method
end	

  