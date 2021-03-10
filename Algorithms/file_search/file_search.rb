def search full_file_path, file_name
     puts "checking in #{full_file_path}"
    if full_file_path.include? file_name
        p "found #{file_name} in #{full_file_path}"
        true
    elsif File.file? full_file_path
        false
    else
        for f in Dir.children(full_file_path)
            found = search(File.join(full_file_path, f), file_name)
            return true if found
        end
        false
    end
end

search("/Users/hasan/Documents/Learnings/DS&ALGO Ruby/Advanced", "depth_or_height_of_b_tree.b")