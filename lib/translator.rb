require "yaml"
require 'pp'


def load_library(file)
  library=YAML.load_file(file)
  {:get_meaning=>{},
    :get_emoticon=>{}
  }
  return library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end