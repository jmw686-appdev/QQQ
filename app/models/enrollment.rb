# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  roles      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  context_id :integer
#  user_id    :integer
#

class Enrollment < ApplicationRecord
  has_many :launches, dependent: :destroy
  has_many :submissions, dependent: :destroy
  belongs_to :context
  belongs_to :user

end
