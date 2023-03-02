class AddRichToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :rich, :boolean
  end
end
