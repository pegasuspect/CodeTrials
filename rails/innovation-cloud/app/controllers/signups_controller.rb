class SignupsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new
    @signup = Signup.new
    # byebug
  end
  def create
    permitted = signup_params
    @signup = Signup.new
    # byebug
    @signup.email = permitted
    @signup.save
    redirect_to :thanks
  end

  private
  def signup_params
    params.require(:signup).permit(:email)
  end
end