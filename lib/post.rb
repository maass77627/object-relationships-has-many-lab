class Post
  attr_accessor :title, :author
  attr_reader :author_name
  @@all = []

  def initialize(title, author = nil)
    @title = title
    @author = author
    @author_name = author ? author.name : nil
    @@all << self
  end

  def author=(author)
    @author = author
    @author_name = author.name
  end

  def self.all
    @@all
  end
end
