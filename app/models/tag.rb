# == Schema Information
#
# Table name: tags
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  context_id :integer
#

class Tag < ApplicationRecord
  belongs_to :context
  has_many :question_tags, :dependent => :destroy

end
