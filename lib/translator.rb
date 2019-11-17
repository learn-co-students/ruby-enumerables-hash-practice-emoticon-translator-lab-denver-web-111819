# require modules here
require 'yaml'

def load_library(file_path)
  emoticons = {"get_meaning": {}, "get_emoticon": {}}

  YAML.load_file(file_path).each do |meaning, describe|
     eng, japn = describe
     emoticons[:get_meaning][japn] = meaning
     emoticons[:get_emoticon][eng] = japn
  end
  emoticons
end

def get_japanese_emoticon(file_path, eng_emote)
  emoticons = load_library(file_path)
  japn_emote = emoticons[:get_emoticon][eng_emote]
  if japn_emote
    japn_emote
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, japn_emote)
  emoticons = load_library(file_path)
  meaning = emoticons[:get_meaning][japn_emote]
  if meaning
    meaning
  else
    "Sorry, that emoticon was not found"
  end
end
