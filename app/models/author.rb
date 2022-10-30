require_relative './articles'
require_relative './magazine'

class Author
  attr_accessor :name
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

  def self.all
    @@all
  end

end
