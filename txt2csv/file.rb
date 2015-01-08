# string_hash = File.read('./Web_URL.txt')
# puts string_hash.gsub(/\s\"|,|'/,' ')
File.open("CTD_genes_diseases_transfered_temp.txt") do |in_file|
  File.open("CTD_genes_diseases_transfered_temp.csv", 'w') do |out_file| #the 'w' opens the file for writing
    in_file.each do |line|
     out_file << line.squeeze(' ').gsub(' ', ',')
    end
  end
end
