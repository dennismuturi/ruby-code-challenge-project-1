class Author
    attr_reader :name
    @@all=[]
  
    def initialize(name)
      @name = name
      @@all << self
    
    end
  
    def articles
      articles=[]
      Article.all.each do |article|
      articles << article if article.author == self.name
      end
      articles
     
    end
  
    def magazines
      magazines=[]
      Article.all.each do |article|
        if article.author == self.name
        magazines << article.magazine if  !magazines.include?(article.magazine)
        end
      end
      magazines
    end
  
    def add_article(magazine,title)
       Article.new(self,magazine,title)
    end
  
    def topic_areas
      topic_areas=[]
      Article.all.each do |article|
        if article.author == self.name
        topic_areas << article.magazine[:category] if  !topic_areas.include?(article.magazine[:category])
        end
      end
      topic_areas
    end
    def self.all
      @@all
    end
  
  end

  


  
class Magazine
    attr_accessor :name, :category
    @@all = []
  
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
  
    end
  
    def category
      @category
    end
  
    def contributors
      contributors=[]
      Article.all.each do |article|
        if article.magazine[:name] == self.name 
      contributors << article.author if !contributors.include?(article.author)
      end
    end
      contributors
    end
  
    def article_titles
      def article_titles
        article_titles=[]
        Article.all.each do |article|
          if article.magazine[:name]== self.name
          article_titles << article.title if  !article_titles.include?(article.title)
          end
        end
        article_titles
      end
    end
  
    def contributing_authors
      contributing_authors=[]
      Article.all.each do |article|
        if article.magazine[:name] == self.name 
          contributing_authors << article.author if Article.all.detect {}
      end
    end
      contributors
    end
  
    def self.all
      @@all
    end
  
    def self.find_by_name(mag_name)
      Magazine.all.find {|obj| obj.name == mag_name}
    end
  
  end

  

  
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


