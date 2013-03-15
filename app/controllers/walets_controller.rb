class WaletsController < ApplicationController
  # GET /walets
  # GET /walets.json
  def index
    @walets = Walet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @walets }
    end
  end

  # GET /walets/1
  # GET /walets/1.json
  def show
    @walet = Walet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @walet }
    end
  end

  # GET /walets/new
  # GET /walets/new.json
  def new
    @walet = Walet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @walet }
    end
  end

  # GET /walets/1/edit
  def edit
    @walet = Walet.find(params[:id])
  end

  # POST /walets
  # POST /walets.json
  def create
    @walet = Walet.new(params[:walet])

    respond_to do |format|
      if @walet.save
        format.html { redirect_to @walet, notice: 'Walet was successfully created.' }
        format.json { render json: @walet, status: :created, location: @walet }
      else
        format.html { render action: "new" }
        format.json { render json: @walet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /walets/1
  # PUT /walets/1.json
  def update
    @walet = Walet.find(params[:id])

    respond_to do |format|
      if @walet.update_attributes(params[:walet])
        format.html { redirect_to @walet, notice: 'Walet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @walet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /walets/1
  # DELETE /walets/1.json
  def destroy
    @walet = Walet.find(params[:id])
    @walet.destroy

    respond_to do |format|
      format.html { redirect_to walets_url }
      format.json { head :no_content }
    end
  end
end
