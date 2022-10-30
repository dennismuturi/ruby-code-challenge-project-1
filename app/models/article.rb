require_relative './author'
require_relative './magazine'

class Article 

    attr_reader :author
    attr_reader :magazine
    attr_reader :title
   
    @@all=[]

    def initialize(author,magazine,title)
       @author=author.name
       @magazine={name:magazine.name,category: magazine.category}
       @title=title
       @@all << self

    end

    def self.all
        @@all
    end

    def author
        @author
    end
    
    def magazine
        @magazine[:name] 

    end
end


dennis=Author.new("Dennis Muturi")
tech_magazine=Magazine.new("Tech Scope Magazine","Technology")
article1=Article.new(dennis,tech_magazine,"Tech trends 2022")