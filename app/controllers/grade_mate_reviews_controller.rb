class GradeMateReviewsController < ApplicationController
  before_action :set_grade_mate_review, only: [:show, :edit, :update, :destroy]

  # GET /grade_mate_reviews
  # GET /grade_mate_reviews.json
  def index
    @grade_mate_reviews = GradeMateReview.all
  end

  # GET /grade_mate_reviews/1
  # GET /grade_mate_reviews/1.json
  def show
  end

  # GET /grade_mate_reviews/new
  def new
    @grade_mate_review = GradeMateReview.new
  end

  # GET /grade_mate_reviews/1/edit
  def edit
  end

  # POST /grade_mate_reviews
  # POST /grade_mate_reviews.json
  def create
    @grade_mate_review = GradeMateReview.new(grade_mate_review_params)

    respond_to do |format|
      if @grade_mate_review.save
        format.html { redirect_to @grade_mate_review, notice: 'Grade mate review was successfully created.' }
        format.json { render :show, status: :created, location: @grade_mate_review }
      else
        format.html { render :new }
        format.json { render json: @grade_mate_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grade_mate_reviews/1
  # PATCH/PUT /grade_mate_reviews/1.json
  def update
    respond_to do |format|
      if @grade_mate_review.update(grade_mate_review_params)
        format.html { redirect_to @grade_mate_review, notice: 'Grade mate review was successfully updated.' }
        format.json { render :show, status: :ok, location: @grade_mate_review }
      else
        format.html { render :edit }
        format.json { render json: @grade_mate_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grade_mate_reviews/1
  # DELETE /grade_mate_reviews/1.json
  def destroy
    @grade_mate_review.destroy
    respond_to do |format|
      format.html { redirect_to grade_mate_reviews_url, notice: 'Grade mate review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade_mate_review
      @grade_mate_review = GradeMateReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_mate_review_params
      params.require(:grade_mate_review).permit(:school, :course, :teacher)
    end
end
