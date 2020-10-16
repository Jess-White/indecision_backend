class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :email
      t.string :framework

      t.timestamps
    end
  end
end
