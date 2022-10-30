require_relative './articles'
require_relative './magazine'
require_relative './author'

class Magazine
  attr_accessor :name, :category
  @@all =[]


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
    contributors << article.author if article.magazine == self.name 
    end
    contributors
  end

  def self.all
    @all
  end

  def self.find_by_name(name)
    Magazine.all.find(name)
  end

end
