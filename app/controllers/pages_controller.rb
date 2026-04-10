class PagesController < ApplicationController
  PROJECTS = [
    {
      slug: "luxury-living-room",
      title: "Luxury Living Room",
      category: "Residential",
      year: "2024",
      location: "New York, NY",
      description: "A sophisticated living room design that blends modern aesthetics with timeless elegance. The space features custom millwork, curated art pieces, and a warm neutral palette that creates an inviting atmosphere.",
      thumbnail: "living_room/living_room.jpeg",
      images: %w[living_room/living_room_1.jpeg living_room/living_room_2.jpeg living_room/living_room_3.jpeg]
    },
    {
      slug: "luxury-house",
      title: "Luxury House",
      category: "Residential",
      year: "2024",
      location: "Brooklyn, NY",
      description: "A complete kitchen transformation featuring sleek cabinetry, marble countertops, and state-of-the-art appliances. The open layout maximizes natural light and creates a seamless flow between cooking and dining areas.",
      thumbnail: "house/house.jpeg",
      images: %w[house/house_outer_look.mp4 house/house_front_elevation.jpeg house/house_front_elevation_1.jpeg]
    },
    {
      slug: "luxurious-island-villa",
      title: "Luxurious Island Villa",
      category: "Commercial",
      year: "2023",
      location: "Manhattan, NY",
      description: "A minimalist office design focused on productivity and well-being. Clean lines, ergonomic furniture, and biophilic elements create a workspace that inspires creativity while maintaining a clutter-free environment.",
      thumbnail: "island/island.jpeg",
      images: %w[island/island_video.mp4 island/island1.jpeg island/island2.jpeg]
    },
    {
      slug: "school-design",
      title: "School Design",
      category: "Hospitality",
      year: "2023",
      location: "SoHo, NY",
      description: "An elegant hotel lobby that sets the tone for a memorable guest experience. Rich textures, statement lighting, and carefully curated furnishings create a sophisticated welcome space that balances luxury with comfort.",
      thumbnail: "school/school1.jpeg",
      images: %w[school/school1.jpeg school/school2.jpeg school/school3.jpeg]
    },
    {
      slug: "blender-product-design-and-animation",
      title: "Blender Product Design and Animation",
      category: "Residential",
      year: "2023",
      location: "Upper East Side, NY",
      description: "A full-scale penthouse renovation that transforms a dated space into a contemporary masterpiece. Floor-to-ceiling windows, custom furniture, and an open floor plan maximize the stunning city views.",
      thumbnail: "perfume/perfume.png",
      images: [
        "perfume/perfume.png",
        "perfume/NUSUK Render Result.mp4",
        "perfume/Untitled Result Render 1.mp4",
        "perfume/perfume1.png",
        "perfume/perfume2.jpeg",
        "perfume/Nusuk.png",
        "perfume/30604.png",
        "perfume/IMG-20260313-WA0000.jpg.jpeg"
      ]
    }
  ].freeze

  def home
    @projects = PROJECTS
  end

  def about
  end

  def project
    @project = PROJECTS.find { |p| p[:slug] == params[:slug] }
    redirect_to root_path unless @project
  end
end
