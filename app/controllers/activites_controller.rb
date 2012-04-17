class ActivitesController < ApplicationController
  # GET /activites
  # GET /activites.json
  def index
    @activites = Activite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @activites }
    end
  end

  # GET /activites/1
  # GET /activites/1.json
  def show
    @activite = Activite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @activite }
    end
  end

  # GET /activites/new
  # GET /activites/new.json
  def new
    @activite = Activite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @activite }
    end
  end

  # GET /activites/1/edit
  def edit
    @activite = Activite.find(params[:id])
  end

  # POST /activites
  # POST /activites.json
  def create
    @activite = Activite.new(params[:activite])
    @activite.user_id = current_user.id
    
    
    respond_to do |format|
      if @activite.save
        format.html { redirect_to @activite, notice: 'Activite was successfully created.' }
        format.json { render json: @activite, status: :created, location: @activite }
      else
        format.html { render action: "new" }
        format.json { render json: @activite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /activites/1
  # PUT /activites/1.json
  def update
    @activite = Activite.find(params[:id])

    respond_to do |format|
      if @activite.update_attributes(params[:activite])
        format.html { redirect_to @activite, notice: 'Activite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @activite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activites/1
  # DELETE /activites/1.json
  def destroy
    @activite = Activite.find(params[:id])
    @activite.destroy

    respond_to do |format|
      format.html { redirect_to activites_url }
      format.json { head :no_content }
    end
  end
end
