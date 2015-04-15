require 'rails_helper'

RSpec.describe Blog, type: :model do
  it "titleがあれば有効な状態であること" do
    blog = Blog.new(title: "blog title")
    expect(blog.valid?).to eq true
  end
  it "titleがなければ無効な状態であること" do
    blog = Blog.new()
    expect(blog.valid?).to eq false
  end
end
