class WelcomeController < ApplicationController
  def index
    @title_text = "Hello World!"
    @subtitle_text = "I am learning rails"
  end
end
