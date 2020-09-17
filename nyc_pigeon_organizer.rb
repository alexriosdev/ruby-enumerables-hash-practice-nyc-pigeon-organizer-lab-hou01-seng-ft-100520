def nyc_pigeon_organizer(data)

  pigeon_list = {}
  data.each do |attribute_key, value|
    value.each do |attribute_key, name_list|
      name_list.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][attribute_key]
          pigeon_list[name][attribute_key] = []
        end
        pigeon_list[name][attribute_key] << trait.to_s
      end
    end
  end
  pigeon_list
  
end
