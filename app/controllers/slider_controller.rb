class SliderController < ApplicationController
  def index
    @slider = Slider.published.take
  end
end
