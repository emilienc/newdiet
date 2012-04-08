class ActiviteGenresController < ApplicationController
  # GET /activite_genres
  # GET /activite_genres.json
  def index
    @activite_genres = ActiviteGenre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @activite_genres }
    end
  end

  # GET /activite_genres/1
  # GET /activite_genres/1.json
  def show
    @activite_genre = ActiviteGenre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @activite_genre }
    end
  end

  # GET /activite_genres/new
  # GET /activite_genres/new.json
  def new
    @activite_genre = ActiviteGenre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @activite_genre }
    end
  end

  # GET /activite_genres/1/edit
  def edit
    @activite_genre = ActiviteGenre.find(params[:id])
  end

  # POST /activite_genres
  # POST /activite_genres.json
  def create
    @activite_genre = ActiviteGenre.new(params[:activite_genre])

    respond_to do |format|
      if @activite_genre.save
        format.html { redirect_to @activite_genre, notice: 'Activite genre was successfully created.' }
        format.json { render json: @activite_genre, status: :created, location: @activite_genre }
      else
        format.html { render action: "new" }
        format.json { render json: @activite_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /activite_genres/1
  # PUT /activite_genres/1.json
  def update
    @activite_genre = ActiviteGenre.find(params[:id])

    respond_to do |format|
      if @activite_genre.update_attributes(params[:activite_genre])
        format.html { redirect_to @activite_genre, notice: 'Activite genre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @activite_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activite_genres/1
  # DELETE /activite_genres/1.json
  def destroy
    @activite_genre = ActiviteGenre.find(params[:id])
    @activite_genre.destroy

    respond_to do |format|
      format.html { redirect_to activite_genres_url }
      format.json { head :no_content }
    end
  end
end
