module Api
  class WorkExperiencesController < ApplicationController
    before_action :set_work_experience, only: [:show, :update, :destroy]

    # GET /work_experiences
    def index
      @work_experiences = WorkExperience.all

      render json: @work_experiences
    end

    # GET /work_experiences/1
    def show
      render json: @work_experience
    end

    # POST /work_experiences
    def create
      @work_experience = WorkExperience.new(work_experience_params)

      if @work_experience.save
        render json: @work_experience, status: :created, location: @work_experience
      else
        render json: @work_experience.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /work_experiences/1
    def update
      if @work_experience.update(work_experience_params)
        render json: @work_experience
      else
        render json: @work_experience.errors, status: :unprocessable_entity
      end
    end

    # DELETE /work_experiences/1
    def destroy
      @work_experience.destroy
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_work_experience
      @work_experience = WorkExperience.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def work_experience_params
      params.fetch(:work_experience, {})
    end
  end
end
