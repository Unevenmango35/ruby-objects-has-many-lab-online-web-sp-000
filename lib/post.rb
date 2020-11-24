class Post

attr_accessor :title, :author

@@all =[]

def initialize(title)
  @title = title
  @@all << self
end

def self.all
  @@all
end

def author_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end


end
