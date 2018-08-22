class AddAttributesToQuiz < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :questions, :jsonb, null: false, default: '{}'
  end
end
