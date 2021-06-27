require "fileutils"

src_dir = "/home/ajit/Workspace/temp/TrainingSession/fileorganiser"

if Dir.exists?(src_dir)
    filenames = Dir["#{src_dir}/*"].select{ |f| File.file? f }

    filenames.each do |file|
        ext = File.extname(file).gsub(".", "")
        if File.executable?(file)
            ext = "bin"
        end
        if ext == ""
            ext = "no_ext"
        end
        Dir.mkdir("#{src_dir}/#{ext}") unless Dir.exists?("#{src_dir}/#{ext}")
        des_dir = "#{src_dir}/#{ext}/"
        FileUtils.move(file, des_dir)
    end
end