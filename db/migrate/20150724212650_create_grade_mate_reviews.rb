class CreateGradeMateReviews < ActiveRecord::Migration
  def change
    create_table :grade_mate_reviews do |t|
      t.string :school
      t.string :course
      t.string :teacher

      t.timestamps
    end
  end
end
