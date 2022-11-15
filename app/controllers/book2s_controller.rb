class Book2sController < ApplicationController
  def index
    @book2s=Book2.all
  end
end
