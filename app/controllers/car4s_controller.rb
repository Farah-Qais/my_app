class Car4sController < ApplicationController
  def index
    @car4s=Car4.all
  end
end
