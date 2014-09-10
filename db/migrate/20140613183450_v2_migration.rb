class V2Migration < ActiveRecord::Migration
	def change

		create_table :categories do |t|
			t.string 	:name
			t.timestamps
		end


		create_table :strategies do |t|
			t.references	:category
			t.string 		:name
			t.text			:description
			t.timestamps
		end


		create_table :screens do |t|
			t.references	:strategy
			t.references 	:category
			t.string		:name
			t.string		:next_item, default: 'screen'
			t.integer		:seq
			t.text			:content
			t.timestamps
		end
		add_index :screens, :strategy_id
		add_index :screens, :category_id
		add_index :screens, :seq



		create_table :prompts do |t|
			t.references	:question
			t.string		:prompt_type, default: 'radio'
			t.text			:content
			t.integer		:value
			t.boolean		:correct
			t.timestamps
		end


		create_table :questions do |t|
			t.references	:screen
			t.string 		:name
			t.text			:content
			t.string		:question_type
			t.integer		:seq
			t.timestamps
		end
		add_index :questions, :screen_id
		add_index :questions, :name


		create_table :surveyings do |t|
			t.references 	:user
			t.references	:last_screen # screen the user left-off on if incomplete
			t.references 	:furthest_screen, default: 0
			t.integer 		:score
			t.text			:notes
			t.string		:status, default: 'intro' # in-progress, complete
			t.datetime		:completed_at
			t.timestamps
		end
		add_index :surveyings, :user_id
		add_index :surveyings, :last_screen_id


		create_table :responses do |t|
			t.references 	:user
			t.references	:surveying
			t.references 	:question
			t.references 	:prompt
			t.text			:content     # in the case of free-response
			t.datetime		:started_at
			t.datetime		:responded_at
			t.timestamps
		end
		add_index :responses, :user_id
		add_index :responses, :surveying_id
		add_index :responses, :question_id
		add_index :responses, :prompt_id

	end
end
