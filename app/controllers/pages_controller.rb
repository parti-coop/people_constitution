class PagesController < ApplicationController
  def home
    @notices = Notice.order('id DESC')
  end
end