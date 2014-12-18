require "active_record_playground/version"
require 'active_record'
require 'test/unit'
 
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')
ActiveRecord::Schema.define do
  create_table :posts do |t|
    t.string :name
    t.timestamps
  end

  create_table :comments do |t|
    t.integer :post_id
    t.string :content
    t.timestamps
  end
end

class Person < ActiveRecord::Base
  has_many :comments
  validates :name, presence: true
end

class Comment < ActiveRecord::Base
  belongs_to :post
end

class PostModelTest < Test::Unit::TestCase
  def test_post
    Post.create name: "Dick Butt"
    assert_equal 1, Post.count
  end
end

module ActiveRecordPlayground
  # Your code goes here...
end
