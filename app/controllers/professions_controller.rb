class ProfessionsController < ApplicationController

  def index
    @professions = Profession.all
    respond_to do |format|
      format.html
      format.json {render json: @professions}
    end
  end

  def show
    @profession = Profession.find(params[:id])
    respond_to do  |format|
      format.html
      format.json {render json: @profession}
    end
  end

  def new
    @profession = Profession.new
    respond_to do  |format|
      format.html
      format.json {render json: @profession}
    end
  end

  def edit

  end

  def create
    @profession = Profession.new(params[:profession])
    respond_to do |format|
      if @profession.save
        format.html {redirect_to @profession, notice: "Profession was successfully created."}
        format.json {render json: @profession, status: :created, location: @profession}
      else
        format.html { render action: "new" }
        format.json { render json: @profession.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

  end

  def destroy

  end

end
