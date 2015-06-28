class AddUserIdToHoneydo < ActiveRecord::Migration
  def change
    add_column :honeydos, :user_id, :integer
  end
end
