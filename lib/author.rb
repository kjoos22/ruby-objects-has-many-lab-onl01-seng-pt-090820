class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(new_post)
    @posts << new_post
    new_post.author = self
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
  end
  
end