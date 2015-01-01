# == Schema Information
#
# Table name: apiv1_challengers
#
#  id         :integer          not null, primary key
#  character  :string(255)
#  comments   :text(65535)
#  roots      :text(65535)
#  hobbies    :string(255)
#  projects   :text(65535)
#  skills     :string(255)
#  books      :string(255)
#  genres     :string(255)
#  email      :string(255)
#  address    :string(255)
#  sex        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Apiv1::Challenger < ActiveRecord::Base
  self.table_name = "apiv1_challengers"
  Fields = [
    :character,
    :comments,
    :roots,
    :hobbies,
    :projects,
    :skills,
    :books,
    :genres,
    :email,
    :address,
    :sex
  ]
end
