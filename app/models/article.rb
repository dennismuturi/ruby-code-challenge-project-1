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
       {
        name: @magazine[:name], 
        category: @magazine[:category]
    }
     end
end



dennis=Author.new("Dennis Muturi")
peter=Author.new("Peter Ontyango")
tech_magazine=Magazine.new("Tech Scope Magazine","Technology")
family_magazine=Magazine.new("Family Magazine","Family and Relationships")
fashion_magazine=Magazine.new("Coutoure Magazine","Fashion and Lifestyle")




article1=Article.new(dennis,tech_magazine,"Tech trends 2022")
article2=Article.new(dennis,tech_magazine,"App trends 2022")
article3=Article.new(dennis,tech_magazine,"tecno spark Review")

article4=Article.new(dennis,family_magazine,"Why Marriage Fails")
article5=Article.new(peter,tech_magazine,"Top Tech gadgets")
article6=Article.new(dennis,fashion_magazine,"Men 2022 Fashion Trends")
article7=Article.new(peter,fashion_magazine,"Grooming Tips for Men")
article8=Article.new(peter,family_magazine,"Parenting Tips 2022")