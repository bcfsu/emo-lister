class EmoListerCLI

  attr_accessor :episodes

  #use the colorize method here to make the puts look cool

  def call
    puts "Hello! Welcome to Emo Lister"

    list_podcasts
    menu
    goodbye
  end

  def list_podcasts
    puts "Here are the most recent podcast episodes..."
    puts ""
    @episodes = EmoScraper.scrape_episodes
    @episodes.each_with_index do |epi, idx|
      puts "#{idx + 1}. #{epi.name}"
    end
    puts ""
  end

  def menu
    puts "What episode would you like to read more about? Or type exit"
    input = ""
    while input != "exit"
      input = gets.strip
      case input
      when "list"
        #I am repeating the code from above to avoid re-scraping the page
        @episodes.each_with_index do |epi, idx|
          puts "#{idx + 1}. #{epi.name}"
        end
        puts ""
      when "1"
        puts Episode.all[0].summary
        puts ""
        # menu
      when "2"
        puts Episode.all[1].summary
        puts ""
        # menu
      when "3"
        puts Episode.all[2].summary
        puts ""
        # menu
      when "4"
        puts Episode.all[3].summary
        puts ""
        # menu
      when "5"
        puts Episode.all[4].summary
        puts ""
        # menu
      else
        puts "Not sure what you mean! Please select the episode you'd like to read more about, list, or exit."
        puts ""
      end
    end
  end

  def goodbye
    puts "Thanks for checking this out!"
  end

end
