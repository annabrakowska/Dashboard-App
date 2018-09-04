class ApplicationController < ActionController::Base
  before_action :authenticate_admin!, only: [:index]  

    layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller?
      "new_layout"
    else
      "application"
    end
  end
end
