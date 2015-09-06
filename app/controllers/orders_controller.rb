class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @orders = Order.all
    respond_with(@orders)
  end

  def custom_save

        @order = Order.new(:name => params[:name], :number_of_guest => params[:number_of_guest], :res_time => params[:res_time], :res_date => params[:res_date])
        @order.save
          
        
  end



  def show
    respond_with(@order)
  end

  def new
    @order = Order.new
    @orders = Order.order('id DESC').paginate(:page => params[:page], :per_page => 7)
    respond_with(@order)
  end

  def edit
  end


  def create
     @order = Order.new(order_params)

      respond_to do |format|
      if @order.save
        format.html { redirect_to new_order_path, notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @order.update(order_params)
    respond_with(@order)
  end

  def destroy
    @order.destroy
    respond_with(@order)
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:name, :res_time, :res_date, :number_of_guest, :special_request, :contact_number, :email)
    end
end
