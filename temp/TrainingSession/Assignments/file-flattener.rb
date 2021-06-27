require "fileutils"

# def move (string1, string2)
#     puts string1
#     puts string2
# end

des_dir = "/home/ajit/Workspace/temp/TrainingSession/fileorganiser"

# src_pdf = "#{des_dir}pdf_files/"
# src_txt = "#{des_dir}text_files/"
# src_csv = "#{des_dir}csv_files/"
# src_msc = "#{des_dir}msc_files/"
# sources = [src_txt, src_pdf, src_csv, src_msc]

sources = Dir["#{des_dir}/*"].reject{ |f| File.file? f }
# puts sources

sources.each do |s|
    filename = Dir["#{s}/*"].select{ |f| File.file? f }.map{ |f| File.basename f }
    filename.each do |f|
        FileUtils.move("#{s}/#{f}", des_dir)
    end
end