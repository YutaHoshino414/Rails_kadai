class CreateTsubuyakis < ActiveRecord::Migration[5.2]
  def change
    create_table :tsubuyakis do |t|
      t.text :content
    end
  end
end
