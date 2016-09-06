class CompaniesController < ApplicationController

  def edit
    @type = Type.find(params[:type_id])
    @company = Company.find(params[:id])
    render :edit
  end

  # def index
  #   @company = Company.all
  #   render :index
  # end

  # def show
  #   @company = Company.find(params[:id])
  # end

  def new
    @type = Type.find(params[:type_id])
    @company = @type.companies.new
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to type_path(@company.type)
  end

  def create
    @type = Type.find(params[:type_id])
    @company = @type.companies.new(company_params)
    if @company.save
      redirect_to type_path(@company.type)
    else
      render :new
    end
  end

  def update
    @type = Type.find(params[:type_id])
    @company= Company.find(params[:id])
    if @company.update(company_params)
      redirect_to type_path(@company.type)
    else
      render :edit
    end
  end

private
  def company_params
    params.require(:company).permit(:name)
  end
end
