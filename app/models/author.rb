require_relative './articles'
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
