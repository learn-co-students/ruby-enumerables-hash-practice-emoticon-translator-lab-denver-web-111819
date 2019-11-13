require 'yaml'

def load_library(file_path)
  emoticon_dictionary = { "get_meaning" => {},"get_emoticon" => {}}
  
  YAML.load_file(file_path).each do |meaning, language|
    eng,jp = language
    emoticon_dictionary["get_meaning"][jp] = meaning
    emoticon_dictionary["get_emoticon"][eng] =jp
  end 
  emoticon_dictionary
end

def get_japanese_emoticon(file_path, emoticon)
  emoticon_dictionary = load_library(file_path)
  result = emoticon_dictionary["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  emoticon_dictionary = load_library(file_path)
  result = emoticon_dictionary["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end