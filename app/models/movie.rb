class Movie < ActiveRecord::Base
  attr_accessible :actors, :duration, :genre, :summary, :title
  has_many :shows
  
  validates :duration, :numericality => {:greater_than => 0, :only_integer => true, :allow_blank => true, :allow_nil => true}
accepts_nested_attributes_for :shows


  def funky_method
    "#{self.title}"
  end





end
