class CreateShowSources < ActiveRecord::Migration[6.0]
  def change
    create_table :show_sources do |t|
      t.belongs_to :show, null: false, foreign_key: true
      t.belongs_to :source, null: false, foreign_key: true
    end
  end
end
