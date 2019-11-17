# require modules here
require 'yaml'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  e_hash = {:get_meaning => {}, :get_emoticon => {}}
  emoticons.each do |k, v|
    e_hash[:get_meaning][v[1]] = k 
    e_hash[:get_emoticon][v[0]] = v[1]
  end
  e_hash
end

def get_japanese_emoticon(file_path, emoticon)
  look_up = load_library(file_path)
  sorry_message = "Sorry, that emoticon was not found"
  if look_up[:get_emoticon][emoticon]
    return look_up[:get_emoticon][emoticon]
  else
    return sorry_message
  end
end

def get_english_meaning(file_path, emoticon)
  look_up = load_library(file_path)
  sorry_message = "Sorry, that emoticon was not found"
  if look_up[:get_meaning][emoticon]
    return look_up[:get_meaning][emoticon]
  else
    return sorry_message
  end
end