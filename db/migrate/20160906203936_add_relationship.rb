class AddRelationship < ActiveRecord::Migration[5.0]
  def change
    add_column(:companies, :type_id, :integer)
  end
end
