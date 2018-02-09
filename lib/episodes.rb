class Episode
  attr_accessor :name, :url

  @@all = []

  def initialize(name, url)
    @name = name
    @url = url

    @@all << self
  end

  def self.all
    @@all
  end

  def open
    #open the website to the instance of Episode
  end
end
