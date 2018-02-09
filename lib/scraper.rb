class EmoScraper
  attr_reader :site

  def initialize
    @site = Nokogiri::HTML(open('http://www.washedupemo.com/news?category=podcast'))
    # binding.pry

  end

  def self.scrape_episodes
    #scrape the title and the A HREF associated with the H1, send it to the Episode class
    episodes = @site.css("h1.entry-title a")
    episodes.collect do |episode|
      index = "www.washedupemo.com"
      title = episode.text
      url = episode.attr("href")
      Episode.new(title, index + url)

    end
  end

  # binding.pry


end


# Expectations:
# washed_up_emo = EmoScraper.new("www.washedupemo.com").scrape
# washedupemo.episodes.first.title => "Ep. 123 - Buddy Nielsen (Senses Fail)"

# Another idea...
# washed_up = EmoScraper.new.scrape_episodes => [array of Episode instances with :titles and :urls]
# washed_up.scrape_awards => [array Awards with :years and :winners and :runnerups]
