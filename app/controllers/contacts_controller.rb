class ContactsController < ApplicationController
 
  def index
    @feedback = Feedback.new
  end

  def create_feedback
    @feedback = Feedback.new(params[:feedback])
    FeedbackMailer.information_request(params[:text], params[:email]).deliver

    respond_to do |format|
      if @feedback.save
        format.html { redirect_to contacts_path, notice: 'Отзыв отправлен' }
        format.json { render json: @feedback, status: :created, location: @feedback }
      else
        format.html { redirect_to contacts_path, notice: 'Ошибка' }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end

end