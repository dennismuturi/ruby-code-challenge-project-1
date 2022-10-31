require_relative './articles'
require_relative './magazine'
require_relative './author'

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
