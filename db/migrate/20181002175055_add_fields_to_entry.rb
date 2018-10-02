class AddFieldsToEntry < ActiveRecord::Migration[5.2]
  def change
  	add_column :entries, :title, :string, null: false, default: ''
  	add_column :entries, :body, :text, null: false, default: ''
  end
end
