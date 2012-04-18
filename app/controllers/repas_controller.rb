

class RepasController < ApplicationController

  
  def aliments
    @repa = Repa.find(params[:id])
    @aliments = @repa.aliments.paginate(page: params[:page])
  end
  
  # GET /repas
  # GET /repas.json
  def index
    @repas = Repa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @repas }
    end
  end

  # GET /repas/1
  # GET /repas/1.json
  def show
    @repa = Repa.find(params[:id])
   

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @repa }
    end
  end

  # GET /repas/new
  # GET /repas/new.json
  def new
    @repa = Repa.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @repa }
    end
  end

  # GET /repas/1/edit
  def edit
    @repa = Repa.find(params[:id])
  end

  # POST /repas
  # POST /repas.json
  def create
    @repa = Repa.new(params[:repa])
    @repa.user_id = current_user.id
    respond_to do |format|
      if @repa.save
        format.html { redirect_to @repa, notice: 'Repa was successfully created.' }
        format.json { render json: @repa, status: :created, location: @repa }
      else
        format.html { render action: "new" }
        format.json { render json: @repa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /repas/1
  # PUT /repas/1.json
  def update
    @repa = Repa.find(params[:id])

    respond_to do |format|
      if @repa.update_attributes(params[:repa])
        format.html { redirect_to @repa, notice: 'Repa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @repa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repas/1
  # DELETE /repas/1.json
  def destroy
    @repa = Repa.find(params[:id])
    @repa.destroy

    respond_to do |format|
      format.html { redirect_to repas_url }
      format.json { head :no_content }
    end
  end
end
