class Author

attr_accessor :name

@@post_count = 0

def initialize(name)
  @name = name
  @posts =[]
end

def posts
  Post.all.select {|title| title.author == self}
end

def add_post(post)
  @@post_count += 1
  @posts << post
  post.author = self
end

def add_post_by_title(title)
  title = Post.new(title)
  add_post(title)
end

def post_count
  @@post_count
end


end
