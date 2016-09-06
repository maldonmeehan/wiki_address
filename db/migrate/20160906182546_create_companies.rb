class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :phone, :string
      t.column :website, :string
      t.column :hours, :string
      t.column :picture, :string

      
    end
  end
end
