module ApplicationHelper
  PROJECT_COLORS = {
    "luxury-living-room"    => "#C4B5A0",
    "modern-kitchen-redesign" => "#A8B5A0",
    "minimal-office-space"  => "#B0B8C4",
    "boutique-hotel-lobby"  => "#C4A0A8",
    "penthouse-renovation"  => "#A0B0C4",
    "spa-retreat-design"    => "#B8C4A0"
  }.freeze

  GALLERY_COLORS = %w[#D4C5B0 #C0C8B8 #B8C0D0 #D0B8C0 #B0C0D0 #C8D0B0].freeze

  def project_color(slug)
    PROJECT_COLORS[slug] || "#C4B5A0"
  end

  def gallery_color(index)
    GALLERY_COLORS[index % GALLERY_COLORS.length]
  end
end
