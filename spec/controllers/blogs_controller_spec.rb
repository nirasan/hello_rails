require 'rails_helper'

RSpec.describe BlogsController, type: :controller do
  fixtures :blogs

  describe 'GET #index' do
    it "@blogsに全てのBlogが入っていること" do
      get :index
      expect(assigns(:blogs).size).to eq 2
      expect(assigns(:blogs)).to include blogs(:blog1)
      expect(assigns(:blogs)).to include blogs(:blog2)
    end
  end

  describe 'POST #create' do
    it "新規作成後に@blogのshowに遷移すること" do
      post :create, blog: {title: "New Blog"}
      blog = Blog.where(title: "New Blog").first
      expect(response).to redirect_to blog_path(blog)
    end
  end
end
