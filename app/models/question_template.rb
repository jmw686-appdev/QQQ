# == Schema Information
#
# Table name: question_templates
#
#  id             :bigint           not null, primary key
#  name           :string
#  points_awarded :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  context_id     :integer
#

class QuestionTemplate < ApplicationRecord
  belongs_to :context
  has_many :required_fields, :dependent => :destroy

end
