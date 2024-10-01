# frozen_string_literal: true

require 'tty-prompt'
require 'json'

module Ypages
  def self.run
    file = File.read(ENV['YPAGES_PATH'])
    json = JSON.parse(file)
    prompt = TTY::Prompt.new

    az = prompt.select('Choose your AZ:', json.keys)
    dc = prompt.select('Choose your DC:', json[az].keys)
    env = prompt.select('Choose your ENV:', json[az][dc].keys)
    service = prompt.select('Choose your ENV:', json[az][dc][env])

    exec "ssh #{az}-#{service}-#{dc}-#{env}.#{ENV['YPAGES_DOMAIN']}.com"
  end
end
