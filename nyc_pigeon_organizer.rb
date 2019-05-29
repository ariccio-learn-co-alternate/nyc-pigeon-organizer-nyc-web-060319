def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.color.purple.each do |pigeon_name|
    if pigeon_list.has_key?(pigeon_name)
      pigeon_list[pigeon_name][color] << purple
    else
      pigeon_list[pigeon_name] = {
        :color => ["purple"]
      }
    end
  end
end