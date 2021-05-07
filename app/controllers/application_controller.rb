class ApplicationController < ActionController::Base
  def start
    render html: "Hello World!"
  end
end
