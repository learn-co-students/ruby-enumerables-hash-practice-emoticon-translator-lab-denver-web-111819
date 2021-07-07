 require 'yaml'

def load_library(path)
  emoticons = YAML.load_file(path) 
  emote_hash = {:get_meaning => {} , :get_emoticon => {} } 
  emoticons.each do |key, value|
    emote_hash[:get_meaning][value[1]] = key 
    emote_hash[:get_emoticon][value[0]] = value[1]
  end
  return emote_hash

end

def get_japanese_emoticon(path, emoticon)
  lookup = load_library(path)
  if lookup[:get_emoticon][emoticon]
    return lookup[:get_emoticon][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
lookup = load_library(path)
  if lookup[:get_meaning][emoticon]
    return lookup[:get_meaning][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end