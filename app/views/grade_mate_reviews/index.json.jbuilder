json.array!(@grade_mate_reviews) do |grade_mate_review|
  json.extract! grade_mate_review, :id, :school, :course, :teacher
  json.url grade_mate_review_url(grade_mate_review, format: :json)
end
