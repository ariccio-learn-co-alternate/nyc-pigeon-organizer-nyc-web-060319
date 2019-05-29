def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list_out = {}
  data.color.each do |color, pigeons_list|
    pigeons_list.each do |pigeon_name|
      if pigeon_list_out.has_key?(pigeon_name)
        pigeon_list_out[pigeon_name][:color] << color
      else
        pigeon_list_out[pigeon_name][:color] = [color]
      end
    end
  end
  data.gender.each do |gender, pigeons_list|
    pigeons_list.each do |pigeon_name|
      pigeon_list_out[pigeon_name][:gender] = gender
    end
  end
  data.lives.each do |location, pigeons_list|
    pigeons_list.each do |pigeon_name|
      if pigeon_list_out[pigeon_name].has_key?(:lives)
        pigeon_list_out[pigeon_name][:lives] << location
      else
        pigeon_list_out[pigeon_name][:lives] = [location]
      end
    end
  end
end