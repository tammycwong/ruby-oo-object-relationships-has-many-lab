class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #add_post takes in argument of a post and associates that post with author by
    #telling the post that it belongs to author
    def add_post(post)
        post.author = self
    end
    #has many posts 
    def posts
        Post.all.select {|post| post.author == self}
    end

    #add_post_by_title takes in argument of post title
    #creates new post with it & associates post and author
    def add_post_by_title (post_title)
        post = Post.new(post_title)
        post.author = self
    end

    #post_count class method that returns total number of posts 
    #associated to all existing authors
    def self.post_count
        Post.all.count
    end
end