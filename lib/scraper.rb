class EmoScraper

  def self.scrape_episodes
    site = Nokogiri::HTML(open('http://www.washedupemo.com/news?category=podcast'))

    episodes = site.css("h1.entry-title a")
    episodes.collect do |episode|
      index = "www.washedupemo.com"
      title = episode.text
      url = index + episode.attr("href").strip
      new_epi = Episode.new(title, url)

      #Next Steps: Scrape the summary page and write it to the created Episode

      # episode_page = Nokogiri::HTML(open('http://www.washedupemo.com/news/2018/5/ep-123-buddy-nielsen-senses-fail'))
      # new_epi.summary = episode_page.css(p.description).text
    end

  end

end


# Expectations:
# washed_up_emo = EmoScraper.new("www.washedupemo.com").scrape
# washedupemo.episodes.first.title => "Ep. 123 - Buddy Nielsen (Senses Fail)"

# Another idea...
# washed_up = EmoScraper.new.scrape_episodes => [array of Episode instances with :titles and :urls]
# washed_up.scrape_awards(year) => [array of Awards with :category :winners and :runnerups]
