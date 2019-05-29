def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.color.each do |color, pigeons_list|
    pigeons_list.each do |pigeon_name|
      if pigeon_list.has_key?(pigeon_name)
        pigeon_list[pigeon_name][:color] = color
      else
        pigeon_list[pigeon_name] = {
          :color => [color]
        }
      end
    end
  end
end