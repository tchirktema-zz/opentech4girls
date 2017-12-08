class RegistersController < ApplicationController

  def index

  end
  def new
    @register = Register.new
    render layout: "register"

  end

  def create
    @register = Register.new(register_params)

    if @register.save
      redirect_to root_path, notice: "your registration successfull"
    else
      render "new", alert: "your registration failed"
    end
  end

  protected
    def register_params
      params.require(:register).permit(:name,:first_name,:email,:phone,:degree,
        :age,:have_computer,:use_internet,:sex,:twitter_url,:facebook_url,:comment)
    end
end
