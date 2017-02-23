class AddAttachToTest < ActiveRecord::Migration[5.0]
  def change
    add_column :tests, :attach, :has_many
  end
end
