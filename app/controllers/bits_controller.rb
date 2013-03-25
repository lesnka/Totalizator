class BitsController < ApplicationController
  # GET /bits
  # GET /bits.json
#load_and_authorize_resource
 
  def index
    begin
      @bits = Bit.all
      @user = current_user
    rescue
      redirect_to events_url, notice: 'Please login or register'
    end
  end

  # GET /bits/1
  # GET /bits/1.json
  def show
    begin
      @bit = Bit.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error "bits number #{params[:id]} not found"
      redirect_to events_index_url, notice: 'not found bits'
    end
  end

  # GET /bits/new
  # GET /bits/new.json
  def new
    @bit = Bit.new
  end

  # GET /bits/1/edit
  def edit
    @bit = Bit.find(params[:id])
  end

  # POST /bits
  # POST /bits.json
 

  # PUT /bits/1
  # PUT /bits/1.json
  def update
    @bit = Bit.find(params[:id])
    if @bit.update_attributes(params[:bit])
        if @bit.sum < @bit.event.minbits
           @bit.sum = @bit.event.minbits
           @bit.save
           redirect_to @bit, notice: 'Your summa is small. Edit abort' 
        else
        redirect_to @bit, notice:  'Bit was successfully updated.'
        end
    else
    render action: "edit" 
    end
  end

  # DELETE /bits/1
  # DELETE /bits/1.json
  def destroy
    @bit = Bit.find(params[:id])
    @bit.destroy
    redirect_to bits_url, notice: 'Your bit empty!'
  end

def pay_this_bit
  @bit = Bit.find(params[:id])
  @wallet = find_current_wallet
    if @wallet.balance>=@bit.sum
      @wallet.balance-=@bit.sum
      @wallet.save
      @bit.payed = true
      @bit.save
      redirect_to bits_url, notice: "Bit are made. Your balance is:#{@wallet.balance}."
    else
          redirect_to wallet_path(@wallet), notice: "Bits are not made. Your balance is:#{@wallet.balance}." 
    end      
end

def pay_bits
  
  user = current_user  
  sum_of_pay=user.sum_pay
  if sum_of_pay==0
    redirect_to events_url, notice: "You have already paid bits in your list. You can pay for the new."
    #throw sum_of_pay
    else
    @wallet = find_current_wallet
    if @wallet.balance>=sum_of_pay
      @wallet.balance-=sum_of_pay
      @wallet.save
      user.price
      sum_of_pay=0
      redirect_to bits_url, notice: "Bits are made. Your balance is:#{@wallet.balance}."
    else
      redirect_to wallet_path(@wallet), notice: "Bits are not made. Your balance is:#{@wallet.balance}." 
    end
  end
end

def see_balance
  begin
    @wallet = find_current_wallet
    redirect_to wallet_path(@wallet), notice: "#{current_user.wallet.id}redirect to your balance:"  
  rescue
  redirect_to wallet_path(@wallet), notice: "Your wallet is create"  
  end
end

def find_current_wallet
  current_user.wallet ? current_user.wallet : Wallet.create(user_id: current_user.id)
end


end
