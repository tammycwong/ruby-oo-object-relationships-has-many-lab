class Post
    attr_accessor :title, :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end
    #Post author_name knows name of its author
    def author_name
        author.name if author
    end
end