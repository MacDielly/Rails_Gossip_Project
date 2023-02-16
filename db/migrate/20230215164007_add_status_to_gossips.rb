class AddStatusToGossips < ActiveRecord::Migration[7.0]
  def change
    add_column :gossips, :status, :string
  end
end
