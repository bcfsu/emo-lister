class EmoScraper

  def self.scrape_episodes
    site = Nokogiri::HTML(open('http://www.washedupemo.com/news?category=podcast'))

    episodes = site.css("h1.entry-title a")

    episodes.collect do |episode|
      index = "https://www.washedupemo.com"
      name = episode.text
      url = index + episode.attr("href").strip
      new_epi = Episode.new(name, url)
      new_epi
    end

    Episode.all.collect do |episode|
      session = Capybara::Session.new(:poltergeist)
      session.visit("#{episode.url}")
      element = session.first("p.description")
      episode.summary = element.text.strip
      episode
    end

  end

  # TODO: Add a feature to scrape the Emo Awards from the last 4 years

end


# Expectations:
# washedupemo = EmoScraper.scrape_episodes
#
# washedupemo.episodes.first.title => "Ep. 123 - Buddy Nielsen (Senses Fail)"

# washed_up = EmoScraper
# washed_up.scrape_episodes => [array of Episode instances with an assigned :title :url and :summary]
# washed_up.scrape_awards(year) => [array of Awards with :category :winners and :runnerups]
