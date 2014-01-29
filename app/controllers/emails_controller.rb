class EmailsController < ApplicationController
  def create
    email = Email.new(email_params)
    if email.save
      redirect_to root_path, :notice => "Your email was saved."
    else
      redirect_to root_path, :notice => "Had some problems, brah! Check yo email and try again."
    end
  end

  private

  def email_params
    params.require(:email).permit(:email)
  end
end
