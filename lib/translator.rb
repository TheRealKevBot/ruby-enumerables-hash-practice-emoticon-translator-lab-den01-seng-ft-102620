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

def get_english_meaning(emoticons, jap_emote)
  load_library(emoticons)
  list = load_library(emoticons)
  list.select |feeling, lang|
    if lang.value?(jap_emote)
      return feeling
    end
  end
end

def get_japanese_emoticon(emoticons, eng_emote)
  load_library(emoticons)
  list = load_library(emoticons)
end
