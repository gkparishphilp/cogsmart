class RequiredQuestionsMigration < ActiveRecord::Migration
  def change
  	add_column :questions, :required, :boolean, default: true
  	add_column :strategies, :screen_id, :integer

  	remove_column :screens, :strategy_id
  end
end
