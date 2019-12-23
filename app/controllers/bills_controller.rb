class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]
  def index
    @bills = Bill.all
  end

  def show
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(bill_params)
    if @bill.save
      redirect_to bill_path(@bill)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @bill.update(bill_params)
    redirect_to bill_path(@bill)
  end

  def destroy
    @bill.destroy
    redirect_to bills_path
  end

  private

  def bill_params
    params.require(:bill).permit(:name, :address, :species, :found_on)
  end

  def set_bill
    @bill = bill.find(params[:id])
  end
end
