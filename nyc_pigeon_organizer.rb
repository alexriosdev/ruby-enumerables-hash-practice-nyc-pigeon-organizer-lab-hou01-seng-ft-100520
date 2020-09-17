def nyc_pigeon_organizer(data)
  # write your code here!
  
  # data.each_with_object({}) do |(attribute_key, attribute_value), final_array|
  #   attribute_value.each do |inner_key, names|
  #     names.each do |name|
  #       if !final_array[name]
  #         final_array[name] = {}
  #       end
  #       if !final_array[name][attribute_key]
  #         !final_array[name][attribute_key] = []
  #       end
  #       final_array[name][attribute_key] << inner_key.to_s
  #     end
  #   end
  # end
  
  pigeon_list = {}
  data.each do |attribute_key, value|
    value.each do |trait, name_list|
      name_list.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][attribute_key]
          !pigeon_list[name][attribute_key] = []
        end
        pigeon_list[name][attribute_key] << trait.to_s
      end
    end
  end
  pigeon_list
  
end
