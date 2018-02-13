class EmoListerCLI

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
    episodes = EmoScraper.scrape_episodes
    episodes.each_with_index do |epi, idx|
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
        list_podcasts
      when "1"
        puts Episode.all[0].summary
      when "2"
        puts Episode.all[1].summary
      when "3"
        puts Episode.all[2].summary
      when "4"
        puts Episode.all[3].summary
      when "5"
        puts Episode.all[4].summary
      else
        puts "Not sure what you mean! Please select the episode you'd like to read more about, list, or exit."
      end
    end
  end

  def goodbye
    puts "Thanks for checking this out!"
  end

end
