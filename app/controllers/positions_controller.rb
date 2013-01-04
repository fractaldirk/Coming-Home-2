class PositionsController < ApplicationController
  # GET /positions
  # GET /positions.json
  def index
    @positions = Position.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @positions }
    end
  end

  # GET /positions/1
  # GET /positions/1.json
  def show
    @position = Position.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @position }
      format.xls
      format.doc
    end
  end

  # GET /positions/new
  # GET /positions/new.json
  def new
    @position = Position.new
    @tweet = Tweet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @position }
    end
  end

  # GET /positions/1/edit
  def edit
    @position = Position.find(params[:id])
    @tweet = Tweet.new
  end

  # POST /positions
  # POST /positions.json
  def create
    @position = Position.new(params[:position])
    @tweet = Tweet.new(params[:tweet])

    respond_to do |format|
      if @position.save
        @tweet.save
        format.html { redirect_to @position, notice: 'Position was successfully created.' }
        format.json { render json: @position, status: :created, location: @position }
      else
        format.html { render action: "new" }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /positions/1
  # PUT /positions/1.json
  def update
    @position = Position.find(params[:id])
    @tweet = Tweet.new(params[:tweet])

    respond_to do |format|
      if @position.update_attributes(params[:position])
        @tweet.save
        format.html { redirect_to @position, notice: 'Position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positions/1
  # DELETE /positions/1.json
  def destroy
    @position = Position.find(params[:id])
    @position.destroy

    respond_to do |format|
      format.html { redirect_to positions_url }
      format.json { head :no_content }
    end
  end

  def edit_job_description
    @position = Position.find(params[:id])
    @tweet = Tweet.new
  end

  def edit_hr_profile
    @position = Position.find(params[:id])
    @tweet = Tweet.new
  end

  def edit_competency_profile
    @position = Position.find(params[:id])
    @competencies = Competency.all
    @tweet = Tweet.new
    1.times { @position.competencies.build }

    respond_to do |format|
      format.html # edit_competency_profile.html.erb
      format.json { render json: @position }
    end
  end

end
