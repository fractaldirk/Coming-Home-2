class CompetenciesController < ApplicationController
  def index
    @competencies = Competency.all
  end

  def show
    @competency = Competency.find(params[:id])
  end

  def new
    @competency = Competency.new
  end

  def create
    @competency = Competency.new(params[:competency])

    respond_to do |format|
      if @competency.save
        format.html { redirect_to competencies_path , notice: 'Competency was successfully created.' }
        format.json { render json: competencies_path, status: :created, location: @competency }
      else
        format.html { render action: "new" }
        format.json { render json: @competency.errors, status: :unprocessable_entity }
      end
    end
  end
end
