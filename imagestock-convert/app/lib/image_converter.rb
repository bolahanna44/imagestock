class ImageConverter
  def initialize(url)
    @image = MiniMagick::Image.open(url)
  end

  def to_png
    @image.format 'png'
    @image.to_blob
  end

  def to_jpg
    @image.format 'jpg'
    @image.to_blob
  end

  def to_jpeg
    @image.format 'jpeg'
    @image.to_blob
  end

  def destroy!
    @image.destroy!
  end
end
