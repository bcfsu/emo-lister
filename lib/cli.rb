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
      when input.to_i > 0
        #FIXME: This command does not run.
        #validate input here using the size or length method
        #insert logic to choose episode to hear more about
        puts "Here is the summary for podcast #{input}"

      end
    end
  end

  def goodbye
    puts "Thanks for checking this out!"
  end

end
