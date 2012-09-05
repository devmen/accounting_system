# encoding: utf-8
class AccountsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_account, :only => [:show, :edit, :update, :destroy]

  def index
    @accounts = current_user.accounts.order(:id)
  end

  def show
  end

  def new
    @account = Account.new
  end

  def create
    @account = current_user.accounts.build(params[:account])
    if @account.save
      redirect_to new_account_path, :notice => "Счет добавлен"
    else
      render :action => :new
    end
  end

  def edit; end

  def update
    if @account.update_attributes(params[:account])
      redirect_to account_path(@account), :notice => "Счет обновлен"
    else
      render :action => :edit
    end
  end

  def destroy
    @account.destroy
    redirect_to accounts_path, :notice => "Счет удален"
  end

  private

  def find_account
    @account = current_user.accounts.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render :file => "public/404.html"
  end
end
