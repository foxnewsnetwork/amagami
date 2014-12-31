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