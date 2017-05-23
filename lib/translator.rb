# require modules here

def load_library(file_path)
  # code goes here
  require 'yaml'
  newHash = YAML.load_file(file_path)
  get_meaning = {}
  get_emoticon = {}
  newHash.each do |key,value|
    get_meaning[value[1]] = key
    get_emoticon[value[0]] = value[1]
  end
  newHash1 = {'get_meaning' => get_meaning, 'get_emoticon'=>get_emoticon}
  newHash1
end

def get_japanese_emoticon(file_path,emoticon)
  # code goes here
  newHash = load_library(file_path)
  if newHash['get_emoticon'][emoticon].nil?
    return "Sorry, that emoticon was not found"
  else
    return newHash['get_emoticon'][emoticon]
  end
end

def get_english_meaning(file_path,emoticon)
  # code goes here
  newHash = load_library(file_path)
  if newHash['get_meaning'][emoticon].nil?
    return "Sorry, that emoticon was not found"
  else
    return newHash['get_meaning'][emoticon]
  end
end
