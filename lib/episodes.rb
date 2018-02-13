class Episode
  attr_accessor :name, :url, :summary

  @@all = []

  def initialize(name, url)
    @name = name
    @url = url

    @@all << self
  end

  def self.all
    @@all
  end

  def open_url
    #TODO: Add a feature that allows the user to open the website
    #from the terminal
  end
end
