# == Schema Information
#
# Table name: required_fields
#
#  id                   :bigint           not null, primary key
#  input_type           :string
#  instructions         :string
#  options              :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  question_template_id :integer
#

class RequiredField < ApplicationRecord
  belongs_to :question_template

end
