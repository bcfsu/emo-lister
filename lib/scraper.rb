class EmoScraper

  def self.scrape_episodes
    site = Nokogiri::HTML(open('http://www.washedupemo.com/news?category=podcast'))

    episodes = site.css("h1.entry-title a")
    episodes.collect do |episode|
      index = "www.washedupemo.com"
      name = episode.text
      url = index + episode.attr("href").strip
      new_epi = Episode.new(name, url)
      new_epi.summary = "This is a summary of #{new_epi.name}"
      new_epi
    end

    #Next Steps: Scrape the summary page and assign each Episode a :summary

    # Episode.all.collect do |episode|
    #   # episode_page = Nokogiri::HTML(open("#{episode.url}"))
    #   # episode_page = Nokogiri::HTML(open('http://www.washedupemo.com/news/2018/5/ep-123-buddy-nielsen-senses-fail'))
    #   # binding.pry
    #   # FIXME: Capybara::Poltergeist::StatusFailError ... The visit command is not functioning,
    #   # I am getting a DNS timeout
    #
    #   session = Capybara::Session.new(:poltergeist)
    #   session.visit("http://www.washedupemo.com/news/2018/5/ep-123-buddy-nielsen-senses-fail")
    #   element = session.first("p.description")
    #   episode.summary = element.text.strip
    #
    # end

    # This method should be able to return Episode.all
    # Episode.all[0].summary = "This episode is..."

  end

end


# Expectations:
# washedupemo = EmoScraper.scrape_episodes
#
# washedupemo.episodes.first.title => "Ep. 123 - Buddy Nielsen (Senses Fail)"

# washed_up = EmoScraper
# washed_up.scrape_episodes => [array of Episode instances with an assigned :title :url and :summary]
# washed_up.scrape_awards(year) => [array of Awards with :category :winners and :runnerups]
