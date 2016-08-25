def grep(fileref, search)
  File.open(fileref) do |file|
    file.each { |line| puts "Found #{search} on line ##{file.lineno}" if line[/#{search}/i] }
  end
end

grep('happened.txt', 'github so it happened')