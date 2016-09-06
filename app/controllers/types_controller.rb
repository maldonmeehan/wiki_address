class TypesController < ApplicaitonController
  def index
    @types = Type.all
    render :index
  end
end
