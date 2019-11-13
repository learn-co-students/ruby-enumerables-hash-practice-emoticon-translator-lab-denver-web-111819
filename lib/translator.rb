require "yaml"
require 'pp'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_hash = {:get_meaning => {}, :get_emoticon => {}}
  emoticons.each_pair do |key, value|
    new_hash[:get_meaning][value[1]] = key
    new_hash[:get_emoticon][value[0]] = value[1]
  end  
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  japonese_emoticon = emoticons[:get_emoticon][emoticon]
  if !japonese_emoticon
    "Sorry, that emoticon was not found"
  else 
    japonese_emoticon
  end  
end

def get_english_meaning(file_path, emoticon)
  emoticons = load_library(file_path)
  english_meaning = emoticons[:get_meaning][emoticon]
  if !english_meaning
     "Sorry, that emoticon was not found"
  else
    english_meaning
  end  
end