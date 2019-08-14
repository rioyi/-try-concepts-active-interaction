class UsersController < ActiveController
  def create
    outcome = CreateUser.run(params[:user])

    if outcome.valid?
      redirect_to outcome.result
    else
      @user = outcome
      render 'new'
    end
  end
end
