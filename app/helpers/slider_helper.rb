module SliderHelper
  def slider_present?
    @slider&.images&.attached?
  end

  def slider_dark
    @slider.dark
  end

  def slider_interval
    @slider&.interval || 5000
  end

  def carousel_fade?
    'carousel-fade' if @slider.fade == true
  end

  def captions
    @slider&.captions&.split("\r\n")
  end

  def caption_color
    @slider.color
  end
end
