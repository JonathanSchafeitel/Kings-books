class RedisTubroChatController < ApplicationController

  def to_turbo_stream
    controller.render(options.merge(formats: :html))
  rescue ActionView::MissingTemplate => error
    if get?
      raise error
    elsif has_errors? && default_action
      render rendering_options.merge(formats: :html, status: :unprocessable_entity)
    else
      redirect_to navigation_location
    end
  end
  
  def index
  end

  def show
    
  end

  def new
  end

  def edit
  end
end
