def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |basic, specifics|
    if basic == :gender
      specifics.each do |gender, pigeons|
        pigeons.each do |pigeon|
        new_hash[pigeon] = {:gender => [gender.to_s]}
        end

      end
    end
  end
  

  data.each do |basic, specifics|
    if basic == :color
      specifics.each do |color, pigeons|
        pigeons.each do |pigeon|
          if new_hash[pigeon][:color] == nil
            new_hash[pigeon][:color] = []
            new_hash[pigeon][:color] << color.to_s
          else
            new_hash[pigeon][:color] << color.to_s
          end
        end
      end
    end
  end
  

  data.each do |basic, specifics|
    if basic == :lives
      specifics.each do |place, pigeons|
        pigeons.each do |pigeon|
        new_hash[pigeon][:lives] = []
        new_hash[pigeon][:lives] << place
        end
      end
    end
  end


  new_hash

end