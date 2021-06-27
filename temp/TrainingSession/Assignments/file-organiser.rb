# frozen_string_literal: true

# Regular expressions

# /^/ - Beginning of string
# /$/ - Ending of string
# /.*/ - Any character of 0 or more occurences
# /word/ - Any word matching

# f = ['file1.txt', 'file2.txt', 'file1.pdf', 'file2.pdf', 'file1.xlsx', 'file2.xlsx', 'file1.rb', 'file2.rb']

# def reg_match_with_word (string1, string2)
#     if string1 =~ /#{string2}/
#         puts "String match"
#     else
#         puts "No match"
#     end
# end

# def move (string1, string2)
#     puts string1
#     puts string2
# end
# f.each do |i|
#     reg_match_with_word(i, '^*.txt')
# end
# puts f.select {|filename| filename =~ /^*.txt/}

require 'fileutils'

src_dir = '/home/ajit/Workspace/temp/TrainingSession/fileorganiser'
des_pdf = "#{src_dir}/pdf_files/"
des_txt = "#{src_dir}/text_files/"
des_csv = "#{src_dir}/csv_files/"
des_msc = "#{src_dir}/msc_files/"

filenames = Dir["#{src_dir}/*"].select { |f| File.file? f }.map { |f| File.basename f }
# puts filenames

extensions = { '^*.txt' => des_txt, '^*.pdf' => des_pdf, '^*.csv' => des_csv, '^*.*$' => des_msc }

extensions.each_key do |extension|
  filename = filenames.select { |f| f =~ /#{extension}/ }
  # p filename
  filename.each do |f|
    FileUtils.move("#{src_dir}/#{f}", extensions[extension])
  end
  filenames -= filename
  # puts
end
