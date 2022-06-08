class InstructorsController < ApplicationController

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  ## SHOW / DESTROY / UPDATE
   rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    instructors = Instructor.all
    render json: instructors
  end

  def show
    instructor = find_instructor
    render json: instructor
  end

  def create
    instructor = Instructor.create!(instructor_params)
    render json: instructor, status: :created
  end

  def update
    instructor = find_instructor
    instructor.update!(instructor_params)
    render json: instructor, status: :created
  end

  def destroy
    instructor = find_instructor
    instructor.destroy
    head :no_content
  end

  private

  def find_instructor
    Instructor.find(params[:id])
  end

  def instructor_params
    params.permit(:name)
  end

  
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

    def render_not_found_response(not_found)
        render json: { errors: "Count Not Find Record With ID #{not_found.id}"}
    end

end
