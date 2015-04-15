class Comment < ActiveRecord::Base
  belongs_to :entry

  after_create do
    NoticeMailer.comment_notice(self).deliver
  end
end
