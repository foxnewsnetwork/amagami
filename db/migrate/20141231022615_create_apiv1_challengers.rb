class CreateApiv1Challengers < ActiveRecord::Migration
  def change
    create_table :apiv1_challengers do |t|
      t.string :character
      t.text :comments
      t.text :roots
      t.string :hobbies
      t.text :projects
      t.string :skills
      t.string :books
      t.string :genres
      t.string :email
      t.string :address
      t.string :sex
      t.timestamps
    end
  end
end
