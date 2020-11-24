class Author

attr_accessor :name

@@post_count = 0

def initialize(name)
  @name = name
  @posts =[]
end

def add_post(post)
  @@post _count += 1
  @posts << post
  post.author = self
end

def add_post_by_title(title)
  title = Post.new(title)
  add_post(title)

end




end
