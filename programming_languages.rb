require "pry"

def reformat_languages(languages)
  
  new_hash = {}

  languages.each do |style_name, name|
    name.each do |lang, type_of|
      type_of.each do |type, type_value|
        new_hash[lang] = {type: type_value}
        new_hash[lang][:style] = []
      end
    end
  end

  languages.each do |style_name, name|
    name.each do |lang, type_of|
      new_hash[lang][:style] << style_name
    end
  end

  new_hash
  #binding.pry

end
