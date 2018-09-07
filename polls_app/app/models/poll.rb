# == Schema Information
#
# Table name: polls
#
#  id         :bigint(8)        not null, primary key
#  author_id  :integer          not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Poll < ApplicationRecord
  validates :title, presence: true

  belongs_to :author,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: :Author

  has_many :question,
  primary_key: :id,
  foreign_key: :poll,
  class_name: :Question
end
