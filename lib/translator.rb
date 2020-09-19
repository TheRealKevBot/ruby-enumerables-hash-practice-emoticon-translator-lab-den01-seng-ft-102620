require 'pry'
require "yaml"

emoticons = YAML.load_file('./lib/emoticons.yml')

def load_library(emoticons)
  emoticons = YAML.load_file('./lib/emoticons.yml')
  emoticons.each_with_object({}) do |(feeling, emotes), sorted_list|
    if !sorted_list[feeling]
      sorted_list[feeling] = {
        :english => "",
        :japanese => ""
        
      }
    end
    sorted_list[feeling][:english] << emotes[0]
    sorted_list[feeling][:japanese] << emotes[1]
  end
end

def get_japanese_emoticon(emoticons, eng_emote)
  # code goes here
end

def get_english_meaning(emoticons, jap_emote)
  # code goes here
end

