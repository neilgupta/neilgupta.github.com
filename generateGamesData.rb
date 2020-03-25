#!/usr/bin/env ruby

require 'bgg-api'

bgg = BggApi.new
games = bgg.collection(username: 'Bubloo')
File.write('_data/games.json', games.to_json)