class DocumentsController < ApplicationController
  
  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end
  
  def create
    @group = Group.find(params[:group_id])
    @document = @group.documents.new(document_params)
    if @document.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    respond_to do |format|
      format.pdf do
        send_file(@pdf, filename: 'document_title', type: 'application/pdf', disposition: :inline)
      end
    end
  end

  private 
  
  def document_params
    params.require(:document).permit(:document_title, :description, :pdf).merge(user_id: current_user.id)
  end

end
