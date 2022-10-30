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

  end

  def self.all
    @all
  end




end
