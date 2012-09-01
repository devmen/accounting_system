# encoding: utf-8
class AccountsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_account, :only => [:show, :edit, :update, :destroy]

  def index
    @accounts = current_user.accounts
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

  end

  def destroy
  end

  private

  def find_account
    @account = current_user.accounts.find(params[:id])
  end
end
