require 'pry'

def reformat_languages(languages)
  new_hash ={}

  languages.each do |style_key, language_hash|
    binding.pry
    language_hash.each do |lang_key, type_hash|
      type_hash.each do |type_symbol, type_value|
        #binding.pry
        if !new_hash[lang_key].empty?
          new_hash[:style] << style_key
        else
          new_hash[lang_key] = {type_symbol => type_value, :style => [style_key]}
        #binding.pry
        end
      end
    end
  end
new_hash
#binding.pry
end
