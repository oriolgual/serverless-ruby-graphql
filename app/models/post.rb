# frozen_string_literal: true

class Post
  attr_reader :id, :title

  def initialize(id, title)
    @id = id
    @title = title
  end

  def to_hash
    {
      id: id,
      title: title
    }
  end

  def self.find(id)
    all.find do |post|
      post.id == id.to_i
    end
  end

  def self.all
    @all ||= [
      Post.new(1, 'First post'),
      Post.new(2, 'Second post')
    ]
  end
end
