require 'pry'
require "yaml"

def load_library(file_path)
     data = YAML.load_file(file_path)
    
     new_hash = {
           get_meaning: {},
           get_emoticon: {}
           }
    data.each do |emotion, english_japanese|
      new_hash[:get_meaning][english_japanese[1]] = [emotion].join()
       
      new_hash[:get_emoticon][english_japanese[0]] = [english_japanese[1]].join()
    # binding.pry 
    end
     new_hash
   end

def get_japanese_emoticon(file_path, emoticon)
  data = load_library(file_path)
  data[:get_emoticon].each do |japanese, english|
    binding.pry
  if data[:get_emoticon][emoticon] == true && emoticon == japanese
       binding.pry
        return english
       else 
         return "Sorry that emoticon was not found"
        
      end
  end    
end

def get_english_meaning
  # code goes here
end