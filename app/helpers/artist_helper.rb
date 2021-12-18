# frozen_string_literal: true

module ArtistHelper
  
  def name_with_label(artist)
    "#{artist.name} produced by #{artist.label}"
  end
end