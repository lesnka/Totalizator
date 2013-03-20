class WalletsController < ApplicationController
  # GET /wallets
  # GET /wallets.json
  def index
    @wallets = Wallet.all
  end

  # GET /wallets/1
  # GET /wallets/1.json
  def show
    @wallet = Wallet.find(params[:id])
  end

  # GET /wallets/new
  # GET /wallets/new.json
  def new
    @wallet = Wallet.new
  end

  # GET /wallets/1/edit
  def edit
    @wallet = Wallet.find(params[:id])
     #redirect_to wallets_url, notice: 'Balance has be edit.'
  end

  # POST /wallets
  # POST /wallets.json
  def create
    @wallet = Wallet.new(params[:wallet])
    if @wallet.save
      redirect_to @wallet, notice: 'Wallet was successfully created.'
      
    else
      render action: "new" 
      
    end
  end

  # PUT /wallets/1
  # PUT /wallets/1.json
  def update
    @wallet = Wallet.find(params[:id])
    if @wallet.update_attributes(params[:wallet])
       redirect_to @wallet, notice: 'Wallet was successfully updated.' 
       
    else
       render action: "edit"
      
    end
  end

  def destroy
    @wallet = Wallet.find(params[:id])
    @wallet.destroy
    redirect_to wallets_url 
  end
end


