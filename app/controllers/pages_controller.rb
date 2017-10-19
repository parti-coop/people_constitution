class PagesController < ApplicationController
  def home
    @notices = Notice.order('id DESC')
    @events = Event.order('opened_on DESC')
  end

  def admin
  end
end