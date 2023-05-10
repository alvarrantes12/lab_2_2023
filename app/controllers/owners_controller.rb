class OwnersController < ApplicationController
  before_action :set_owner, only: %i[ show edit update destroy ]

  def index
    @owners = Owner.all
  end

  def show; end

  def new
    @owner = Owner.new
  end

  def edit; end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to owner_url(@owner), notice: t('application.created_model', model: t('activerecord.modules.owner.one'))
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @owner.update(owner_params)
      redirect_to owner_url(@owner), notice: t('application.updated_model', model: t('activerecord.modules.owner.one'))
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @owner.destroy
    redirect_to owners_url, notice: t('application.destroyed_model', model: t('activerecord.modules.owner.one'))
  end

  private
    def set_owner
      @owner = Owner.find(params[:id])
    end

    def owner_params
      params.require(:owner).permit(:first_name, :last_name, :email, :number_id, :level)
    end
end
