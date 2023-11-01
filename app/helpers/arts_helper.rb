module ArtsHelper

  # simple wrapper to display art easy
  def display_art(art)
    return image_tag(art.link)
  end
end
