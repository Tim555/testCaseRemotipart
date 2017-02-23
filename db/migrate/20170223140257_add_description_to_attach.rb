class AddDescriptionToAttach < ActiveRecord::Migration[5.0]
  def change
    add_column :attaches, :description, :string
  end
end
