# class UserMailersController < ApplicationController
#   def create
#     if email.save
#       @resume.to_pdf
#       ResumeMailer.resume_email(@resume, current_user.email).deliver_later
#       head :created
#     else
#       render json: @resume.errors, status: :unprocessable_entity
#     end
#   end
# end
