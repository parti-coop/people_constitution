class NoticesController < ApplicationController
  def index
    @notices = Notice.order("id DESC")
  end

  def show
    @notices = Notice.order("id DESC")
    @notice = Notice.find(params[:id])
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(notice_params)
    if @notice.save()
      redirect_to @notice
    else
      render :new
    end
  end

  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    @notice = Notice.find(params[:id])
    if @notice.update(notice_params)
      redirect_to @notice
    else
      render :edit
    end
  end

  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy
    redirect_to @notices
  end

  private

  def notice_params
    params.require(:notice).permit(:title, :body)
  end
end