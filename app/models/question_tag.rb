# == Schema Information
#
# Table name: question_tags
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#  tag_id      :integer
#

class QuestionTag < ApplicationRecord
  belongs_to :question
  belongs_to :tag
end
