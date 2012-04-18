class AlimentsController < ApplicationController
  # GET /aliments
  # GET /aliments.json
  def index
    @aliments = Aliment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aliments }
    end
  end

  # GET /aliments/1
  # GET /aliments/1.json
  def show
    @aliment = Aliment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aliment }
    end
  end

  # GET /aliments/new
  # GET /aliments/new.json
  def new
    @aliment = Aliment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aliment }
    end
  end

  # GET /aliments/1/edit
  def edit
    @aliment = Aliment.find(params[:id])
  end

  # POST /aliments
  # POST /aliments.json
  def create
    @aliment = Aliment.new(params[:aliment])

    respond_to do |format|
      if @aliment.save
        format.html { redirect_to @aliment, notice: 'Aliment was successfully created.' }
        format.json { render json: @aliment, status: :created, location: @aliment }
      else
        format.html { render action: "new" }
        format.json { render json: @aliment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aliments/1
  # PUT /aliments/1.json
  def update
    @aliment = Aliment.find(params[:id])

    respond_to do |format|
      if @aliment.update_attributes(params[:aliment])
        format.html { redirect_to @aliment, notice: 'Aliment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aliment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aliments/1
  # DELETE /aliments/1.json
  def destroy
    @aliment = Aliment.find(params[:id])
    @aliment.destroy

    respond_to do |format|
      format.html { redirect_to aliments_url }
      format.json { head :no_content }
    end
  end
end
