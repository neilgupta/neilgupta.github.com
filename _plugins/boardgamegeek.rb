require 'bgg-api'

module BoardGameGeek
  class Generator < Jekyll::Generator
    def generate(site)
      bgg = BggApi.new
      games = bgg.collection(username: 'Bubloo')

      page = site.pages.detect {|page| page.name == 'games.html'}
      page.data['total_games'] = games['totalitems']
      page.data['games'] = games['item']
    end
  end
end
