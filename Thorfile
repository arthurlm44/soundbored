#!/usr/bin/env ruby

require 'thor'
require 'yaml'

SOUNDBORED_DIR = "/usr/local/var/soundbored/"
SOUND_DIR = "#{SOUNDBORED_DIR}sounds/"
SONG_YML_PATH = "#{SOUNDBORED_DIR}songs.yml"
 
class Soundbored < Thor

  desc "help", "help instructions"
  def help
    exec ("cat #{SOUNDBORED_DIR}README.md")
  end

  desc "play"
  def play(sound_name)
    sounds = YAML.load_file(SONG_YML_PATH)
    if sounds.key?(sound_name)
      exec("echo 'This is what #{sound_name} sounds like' && afplay '#{SOUND_DIR}#{sounds[sound_name]}'")
    else
      puts "I can't find that sound you requested"
      exit
    end
  end
end

