require 'rails_helper'

RSpec.feature "Blogs", type: :feature do
  scenario 'Blogの新規作成時にtitleを入力しなかった場合にエラーが表示されること' do
    visit blogs_path
    click_link 'New Blog'
    click_button 'Save'
    expect(current_path).to eq blogs_path
    expect(page).to have_content "Title can't be blank"
  end
  scenario 'Blogの新規作成時にtitleを入力した場合はデータが保存され閲覧画面に遷移すること' do
    blog_title = "new title"
    visit blogs_path
    click_link 'New Blog'
    within("#new_blog") do
      fill_in 'Title', :with => blog_title
    end
    expect {
      click_button 'Save'
    }.to change(Blog, :count).by(1)
    blog = Blog.where(title: blog_title).first
    expect(current_path).to eq blog_path(blog)
    expect(page).to have_content "Blog was successfully created."
  end
end
