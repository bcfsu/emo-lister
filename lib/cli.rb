class EmoListerCLI

  def call
    puts "Hello! Welcome to Emo Lister"
    puts "Here are the most recent podcast episodes..."

    list_podcasts
    menu
  end

  def list_podcasts
    puts "1. Ep. 123 - Buddy Nielsen (Senses Fail)"
    puts "2. Ep. 122 - Dylan Mattheisen (Tiny Moving Parts)"
    puts "3. Ep. 121 - Jessi Frick (Father/Daughter Records)"
    puts "4. Ep. 120 - Charles Cardello (BiFocal Media)"
    puts "5. Ep. 119 - Arty Shepherd (Mind Over Matter, Errortype: 11, Saint Vitus Bar)"
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
        puts "Here is the summary for the podcast you chose"
        #insert logic to choose episode to hear more about
      end
    end
  end

end
