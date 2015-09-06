class HntReservesController < ApplicationController
  before_action :set_hnt_reserf, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:hnt_save]


  respond_to :html

  def index
    @hnt_reserves = HntReserve.all
    respond_with(@hnt_reserves)
  end


  def hnt_save
        @hnt_reserf = HntReserve.new(:restaurant_name => params[:restaurant_name], :customer_name => params[:customer_name], :reserve_date => params[:reserve_date], :reserve_time => params[:reserve_time], :number_of_ppl => params[:number_of_ppl], :phone => params[:phone])
        @hnt_reserf.save
  end

  def show
    respond_with(@hnt_reserf)
  end

  def new
    @hnt_reserf = HntReserve.new
    respond_with(@hnt_reserf)
  end

  def edit
  end

  def create
    @hnt_reserf = HntReserve.new(hnt_reserve_params)
    @hnt_reserf.save
    respond_with(@hnt_reserf)
  end

  def update
    @hnt_reserf.update(hnt_reserve_params)
    respond_with(@hnt_reserf)
  end

  def destroy
    @hnt_reserf.destroy
    respond_with(@hnt_reserf)
  end

  private
    def set_hnt_reserf
      @hnt_reserf = HntReserve.find(params[:id])
    end

    def hnt_reserf_params
      params.require(:hnt_reserf).permit(:restaurant_name, :customer_name, :reserve_date, :reserve_time, :number_of_ppl, :phone)
    end
end
