class PagesController < ApplicationController

  protect_from_forgery with: :null_session

  def index
  end

  def send_contact_email
    ContactMailer.send_contact(
      params[:name], params[:email], params[:subject], params[:message]
    ).deliver_now

    render status: 200, json: {}
  end
end