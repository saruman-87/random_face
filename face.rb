# encoding: utf-8

# Программа-фоторобот, которая «собирает» лицо из фрагментов.

# Заведем четыре переменные с путями к файлам с набором для каждого фрагмента.

part_of_face = %w[foreheads eyes noses mouths]
face =
  part_of_face.map do |name_file|
    File.readlines("#{__dir__}/data/parts_of_face/#{name_file}.txt", chomp:true).sample
  end

file_name = Time.now.strftime("%F_face (%M-%H-%S)")
face_file = File.new("./data/faces/#{file_name}.txt","a:UTF-8")
face_file.puts(face)
face_file.close
